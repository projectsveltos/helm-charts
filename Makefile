MAKEFILE_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

# renovate: docker=helmunittest/helm-unittest
HELM_UNITTEST_TAG := 4.2.0-1.1.0

# Chart(s) to target (glob pattern, e.g. HELM_CHART=loki)
HELM_CHART ?= *
# Test file pattern within the chart (e.g. HELM_UNITTEST_FILE='tests/ingester/*_test.yaml')
HELM_UNITTEST_FILE  ?= tests/**/*.yaml

generate-templates:
	rm -rf ./generated-template || true
	helm template default-values ./charts/projectsveltos -f ./charts/projectsveltos/values.yaml --namespace default --output-dir ./generated-template/default-values --include-crds
	helm template values-01 ./charts/projectsveltos -f ./charts/projectsveltos/values.yaml -f tests/values01.yaml --namespace default --output-dir ./generated-template/values-01 --include-crds

generate-docs:
	@docker run --rm --volume "$$(pwd)/charts/projectsveltos:/helm-docs" -u $$(id -u) jnorwood/helm-docs:latest --sort-values-order file
	@docker run --rm --volume "$$(pwd)/charts/dashboard:/helm-docs" -u $$(id -u) jnorwood/helm-docs:latest --sort-values-order file
	@docker run --rm --volume "$$(pwd)/charts/crds:/helm-docs" -u $$(id -u) jnorwood/helm-docs:latest --sort-values-order file

.PHONY: helm-unittest
helm-unittest:
	docker run --rm -v $(MAKEFILE_DIR):/apps helmunittest/helm-unittest:$(HELM_UNITTEST_TAG) --strict --file '$(HELM_UNITTEST_FILE)' charts/$(HELM_CHART)

.PHONY: helm-schema
helm-schema:
	echo TODO

# helm schema --config $(MAKEFILE_DIR).github/linters/.schema.yaml -f charts/loki/values.yaml -o charts/loki/values.schema.json

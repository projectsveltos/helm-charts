generate-templates:
	rm -rf ./generated-template || true
	helm template default-values ./charts/projectsveltos -f ./charts/projectsveltos/values.yaml --namespace default --output-dir ./generated-template/default-values --include-crds
	helm template values-01 ./charts/projectsveltos -f ./charts/projectsveltos/values.yaml -f tests/values01.yaml --namespace default --output-dir ./generated-template/values-01 --include-crds

generate-docs:
	@docker run --rm --volume "$$(pwd)/charts/projectsveltos:/helm-docs" -u $$(id -u) jnorwood/helm-docs:latest --sort-values-order file
	@docker run --rm --volume "$$(pwd)/charts/dashboard:/helm-docs" -u $$(id -u) jnorwood/helm-docs:latest --sort-values-order file

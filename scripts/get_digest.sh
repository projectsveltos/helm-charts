#!/bin/bash

# Function to get the image digest
get_image_digest() {
  base_name="$1"  # e.g., addon-controller
  tag="$2" # e.g., v0.47.0

  # Check if both arguments are provided
  if [ -z "$base_name" ] || [ -z "$tag" ]; then
    echo "Usage: $0 <base_name> <tag>"
    return 1
  fi

  image_name="mirror.gcr.io/projectsveltos/$base_name:$tag"

  digest=$(skopeo inspect --format '{{.Digest}}' "docker://$image_name" --override-os="linux" --override-arch="amd64" --override-variant="v8" 2>/dev/null)

  if [ -z "$digest" ]; then
    echo "Error: Could not retrieve digest for $image_name"
    return 1
  fi

  echo "$digest"
  return 0
}

# Main script
if [ $# -ne 1 ]; then  # Check for exactly 1 argument, the tag
  echo "Usage: $0 <tag>"
  exit 1
fi


tag="$1"
# Array of base names
declare -a base_names=(
  "addon-controller"
  "event-manager"
  "register-mgmt-cluster"
  "shard-controller"
  "healthcheck-manager"
  "sveltoscluster-manager"
  "access-manager"
  "classifier"
  "dashboard"
  "ui-backend"
)

# Loop through the base names
for base_name in "${base_names[@]}"; do
  digest=$(get_image_digest "$base_name" "$tag")

  if [ $? -ne 0 ]; then
    echo "Error getting digest for $base_name."
    exit 1
  fi

  echo "$base_name: $digest"
done


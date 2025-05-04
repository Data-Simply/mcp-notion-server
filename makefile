
# Variables
IMAGE_NAME = mcp-notion-server

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: build
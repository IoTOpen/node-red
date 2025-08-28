#!/bin/bash
docker buildx build  -t ghcr.io/iotopen/node-red:4.1.0-22 --platform linux/arm64,linux/amd64 --push .

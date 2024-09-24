#!/bin/bash
docker buildx build  -t ghcr.io/iotopen/node-red:4.0.3 --platform linux/arm64,linux/amd64 --push .

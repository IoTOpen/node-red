#!/bin/bash
docker buildx build  -t ghcr.io/iotopen/node-red:5.0.4 --platform linux/arm64,linux/amd64 --push .

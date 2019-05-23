#!/usr/bin/bash
docker run -i -t \
    -p 4200:4200 \
    --name cv \
    -w /app \
    -v $(pwd):/app \
    -d node:10.15.3-stretch
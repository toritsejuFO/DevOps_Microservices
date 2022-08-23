#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build -t ml_predict:latest .

# Step 2: 
docker images

# In-between steps
## Delete dangling images if any
docker rmi $(docker images -a -q -f dangling=true)
docker images

# Step 3: 
docker run -it --rm --name ml_predict -p 8000:80 ml_predict

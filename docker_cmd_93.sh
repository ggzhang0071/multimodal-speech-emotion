img= "nvcr.io/nvidia/tensorflow:18.02-py2"
#img="padim:0.1"

#--shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864
docker run  --workdir /git --name "mse"  -e DISPLAY --rm \
-v /raid/git/multimodal-speech-emotion-recognition:/git/multimodal-speech-emotion-recognition \
-v /raid/git/datasets:/git/datasets \
$img sleep infinity


docker exec -it mse /bin/bash

# docker images |grep "tensorflow"  |grep  "18."
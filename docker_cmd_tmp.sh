img="nvcr.io/nvidia/tensorflow:18.02-py2" 

docker run --gpus all  --privileged=true   --workdir /git --name "mse"  -e DISPLAY --ipc=host -d --rm  -p 6601:4452  \
-v /raid/git/multimodal-speech-emotion:/git/multimodal-speech-emotion \
-v /raid/git/datasets:/git/datasets \
 $img sleep infinity

docker exec -it mse /bin/bash
cd multimodal-speech-emotion

pip list | grep "tensorflow"


#docker stop mse
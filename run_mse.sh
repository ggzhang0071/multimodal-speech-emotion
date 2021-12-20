timestamp=`date +%Y%m%d%H%M%S`
rm Logs/*.log

cd model

bash reference_script.sh  2>&1  |tee  ../Logs/$timestamp.log
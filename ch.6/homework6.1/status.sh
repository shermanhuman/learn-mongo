echo "mongos 001   ----------------------------------------------------"
ps -o 'pid=,time=,command=' -p $(cat 001/pid)

echo "configsvr 010   ----------------------------------------------------"
ps -o 'pid=,time=,command=' -p $(cat 010/pid)

echo "shardsvr 101   ----------------------------------------------------"
ps -o 'pid=,time=,command='  -p $(cat 101/pid)

echo "shardsvr 201   ----------------------------------------------------"
ps -o 'pid=,time=,command='  -p $(cat 201/pid)

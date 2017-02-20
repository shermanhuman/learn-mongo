echo "mongos 001   ----------------------------------------------------"
ps -o 'pid=,time=,command=' -p $(cat 001/pid)

echo "configsvr 010   ----------------------------------------------------"
ps -o 'pid=,time=,command=' -p $(cat 010/pid)
echo "configsvr 020   ----------------------------------------------------"
ps -o 'pid=,time=,command='  -p $(cat 020/pid)
echo "configsvr 030   ----------------------------------------------------"
ps -o 'pid=,time=,command='  -p $(cat 030/pid)

echo "shardsvr 101   ----------------------------------------------------"
ps -o 'pid=,time=,command='  -p $(cat 101/pid)
echo "shardsvr 102   ----------------------------------------------------"
ps -o 'pid=,time=,command='  -p $(cat 102/pid)
echo "shardsvr 103   ----------------------------------------------------"
ps -o 'pid=,time=,command='  -p $(cat 103/pid)

echo "shardsvr 201   ----------------------------------------------------"
ps -o 'pid=,time=,command='  -p $(cat 201/pid)
echo "shardsvr 202   ----------------------------------------------------"
ps -o 'pid=,time=,command='  -p $(cat 202/pid)
echo "shardsvr 203   ----------------------------------------------------"
ps -o 'pid=,time=,command='  -p $(cat 203/pid)

echo "shardsvr 301   ----------------------------------------------------"
ps -o 'pid=,time=,command='  -p $(cat 301/pid)
echo "shardsvr 302   ----------------------------------------------------"
ps -o 'pid=,time=,command='  -p $(cat 302/pid)
echo "shardsvr 303   ----------------------------------------------------"
ps -o 'pid=,time=,command='  -p $(cat 303/pid)

echo "shardsvr 401   ----------------------------------------------------"
ps -o 'pid=,time=,command='  -p $(cat 401/pid)
echo "shardsvr 402   ----------------------------------------------------"
ps -o 'pid=,time=,command='  -p $(cat 402/pid)
echo "shardsvr 403   ----------------------------------------------------"
ps -o 'pid=,time=,command='  -p $(cat 403/pid)

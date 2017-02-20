echo "Killing shard 101 ..."
kill $(cat 101/pid)
echo "Killing shard 102 ..."
kill $(cat 102/pid)
echo "Killing shard 103 ..."
kill $(cat 103/pid)

echo "Killing shard 201 ..."
kill $(cat 201/pid)
echo "Killing shard 202 ..."
kill $(cat 202/pid)
echo "Killing shard 203 ..."
kill $(cat 203/pid)

echo "Killing shard 301 ..."
kill $(cat 301/pid)
echo "Killing shard 302 ..."
kill $(cat 302/pid)
echo "Killing shard 303 ..."
kill $(cat 303/pid)

echo "Killing shard 401 ..."
kill $(cat 401/pid)
echo "Killing shard 402 ..."
kill $(cat 402/pid)
echo "Killing shard 403 ..."
kill $(cat 403/pid)

echo "Killing config server 010 ..."
kill $(cat 010/pid)
echo "Killing config server 020 ..."
kill $(cat 020/pid)
echo "Killing config server 030 ..."
kill $(cat 030/pid)

echo "Killing mongos 001 ..."
kill $(cat 001/pid)

sleep 2
echo ""
ps | grep mongo | grep -v grep

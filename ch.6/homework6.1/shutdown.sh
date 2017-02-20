echo "Killing mongos 001 ..."
kill $(cat 001/pid)

echo "Killing shard 101 ..."
kill $(cat 101/pid)
echo "Killing shard 201 ..."
kill $(cat 201/pid)

echo "Killing config server 010 ..."
kill $(cat 010/pid)
echo "Killing config server 020 ..."
kill $(cat 020/pid)
echo "Killing config server 030 ..."
kill $(cat 030/pid)

sleep 2
echo ""
ps | grep mongo | grep -v grep

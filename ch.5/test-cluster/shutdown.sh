echo "Killing arbiter 4 ..."
kill $(cat 4/pid)
echo "Killing member 3 ..."
kill $(cat 3/pid)
echo "Killing member 2 ..."
kill $(cat 2/pid)
echo "Killing member 1 ..."
kill $(cat 1/pid)
sleep 3
echo ""
ps | grep mongod | grep -v grep

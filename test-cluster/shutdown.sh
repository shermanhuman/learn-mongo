kill $(cat 3/pid)
kill $(cat 2/pid)
kill $(cat 1/pid)
ps | grep mongod | grep -v grep

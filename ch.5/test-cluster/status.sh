echo "Member 1:"
ps -p $(cat 1/pid)
echo "Member 2:"
ps -p $(cat 2/pid)
echo "Member 3:"
ps -p $(cat 3/pid)
echo "Arbiter 4:"
ps -p $(cat 4/pid)

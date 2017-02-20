echo "Starting member 1 ..."
mongod --dbpath 1 --pidfilepath 1/pid --logpath 1/1.log --logappend --port 27001 --smallfiles --oplogSize 50  --replSet UNACCEPTABLE &
echo "Starting member 2 ..."
mongod --dbpath 2 --pidfilepath 2/pid --logpath 2/2.log --logappend --port 27002 --smallfiles --oplogSize 50  --replSet UNACCEPTABLE &
echo "Starting member 3 ..."
mongod --dbpath 3 --pidfilepath 3/pid --logpath 3/3.log --logappend --port 27003 --smallfiles --oplogSize 50  --replSet UNACCEPTABLE &
echo "Starting arbiter 4 ..."
mongod --dbpath 4 --pidfilepath 4/pid --logpath 4/4.log --logappend --port 27004 --smallfiles --nojournal  --replSet UNACCEPTABLE &
sleep 3
echo ""
ps | grep mongod | grep -v grep

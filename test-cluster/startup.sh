mongod --dbpath 1 --pidfilepath 1/pid --logpath 1/1.log --logappend --port 27001 --smallfiles --oplogSize 50  --replSet UNACCEPTABLE &
mongod --dbpath 2 --pidfilepath 2/pid --logpath 2/2.log --logappend --port 27002 --smallfiles --oplogSize 50  --replSet UNACCEPTABLE &
mongod --dbpath 3 --pidfilepath 3/pid --logpath 3/3.log --logappend --port 27003 --smallfiles --oplogSize 50  --replSet UNACCEPTABLE &
ps | grep mongod | grep -v grep

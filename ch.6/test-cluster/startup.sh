
echo "Starting config server 010 ..."
mongod --replSet configrs --dbpath 010 --pidfilepath 010/pid --logpath 010/app.log --logappend --port 27010 --configsvr &
echo "Starting config server 020 ..."
mongod --replSet configrs --dbpath 020 --pidfilepath 020/pid --logpath 020/app.log --logappend --port 27020 --configsvr &
echo "Starting config server 030 ..."
mongod --replSet configrs --dbpath 030 --pidfilepath 030/pid --logpath 030/app.log --logappend --port 27030 --configsvr &

echo "Starting shard 101 - replica set 1 - shard 01  ..."
mongod --replSet 1 --dbpath 101 --pidfilepath 101/pid --logpath 101/app.log --logappend --port 27101 --smallfiles --oplogSize 50 --shardsvr &
echo "Starting shard 102 - replica set 1 - shard 02  ..."
mongod --replSet 1 --dbpath 102 --pidfilepath 102/pid --logpath 102/app.log --logappend --port 27102 --smallfiles --oplogSize 50 --shardsvr &
echo "Starting shard 103 - replica set 1 - shard 03  ..."
mongod --replSet 1 --dbpath 103 --pidfilepath 103/pid --logpath 103/app.log --logappend --port 27103 --smallfiles --oplogSize 50 --shardsvr &

echo "Starting shard 201 - replica set 2 - shard 01  ..."
mongod --replSet 2 --dbpath 201 --pidfilepath 201/pid --logpath 201/app.log --logappend --port 27201 --smallfiles --oplogSize 50 --shardsvr &
echo "Starting shard 202 - replica set 2 - shard 02  ..."
mongod --replSet 2 --dbpath 202 --pidfilepath 202/pid --logpath 202/app.log --logappend --port 27202 --smallfiles --oplogSize 50 --shardsvr &
echo "Starting shard 203 - replica set 2 - shard 03  ..."
mongod --replSet 2 --dbpath 203 --pidfilepath 203/pid --logpath 203/app.log --logappend --port 27203 --smallfiles --oplogSize 50 --shardsvr &

echo "Starting shard 301 - replica set 3 - shard 01  ..."
mongod --replSet 3 --dbpath 301 --pidfilepath 301/pid --logpath 301/app.log --logappend --port 27301 --smallfiles --oplogSize 50 --shardsvr &
echo "Starting shard 302 - replica set 3 - shard 02  ..."
mongod --replSet 3 --dbpath 302 --pidfilepath 302/pid --logpath 302/app.log --logappend --port 27302 --smallfiles --oplogSize 50 --shardsvr &
echo "Starting shard 303 - replica set 3 - shard 03  ..."
mongod --replSet 3 --dbpath 303 --pidfilepath 303/pid --logpath 303/app.log --logappend --port 27303 --smallfiles --oplogSize 50 --shardsvr &

echo "Starting shard 401 - replica set 4 - shard 01  ..."
mongod --replSet 4 --dbpath 401 --pidfilepath 401/pid --logpath 401/app.log --logappend --port 27401 --smallfiles --oplogSize 50 --shardsvr &
echo "Starting shard 402 - replica set 4 - shard 02  ..."
mongod --replSet 4 --dbpath 402 --pidfilepath 402/pid --logpath 402/app.log --logappend --port 27402 --smallfiles --oplogSize 50 --shardsvr &
echo "Starting shard 403 - replica set 4 - shard 03  ..."
mongod --replSet 4 --dbpath 403 --pidfilepath 403/pid --logpath 403/app.log --logappend --port 27403 --smallfiles --oplogSize 50 --shardsvr &

#echo "Starting mongos 001 ..."
#mongos --configdb configrs/localhost:27010,localhost:27020,localhost:27030 --port 27001 --pidfilepath 001/pid --logpath 001/app.log --logappend &

sleep 2
echo ""
ps | grep mongo | grep -v grep

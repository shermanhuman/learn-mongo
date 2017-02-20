echo "Starting config server 010 ..."
mongod --replSet configrs --dbpath 010 --pidfilepath 010/pid --logpath 010/app.log --logappend --port 27010 --configsvr &
echo "Starting config server 020 ..."
mongod --replSet configrs --dbpath 020 --pidfilepath 020/pid --logpath 020/app.log --logappend --port 27020 --configsvr &
echo "Starting config server 030 ..."
mongod --replSet configrs --dbpath 030 --pidfilepath 030/pid --logpath 030/app.log --logappend --port 27030 --configsvr &

echo "Starting shard 101 - replica set 1 - shard 01  ..."
mongod --dbpath 101 --pidfilepath 101/pid --logpath 101/app.log --logappend --port 27101 --smallfiles --oplogSize 50 --shardsvr &
echo "Starting shard 201 - replica set 1 - shard 01  ..."
mongod --dbpath 201 --pidfilepath 201/pid --logpath 201/app.log --logappend --port 27201 --smallfiles --oplogSize 50 --shardsvr &

echo "Starting mongos 001 ..."
mongos --configdb configrs/localhost:27010,localhost:27020,localhost:27030 --port 27001 --pidfilepath 001/pid --logpath 001/app.log --logappend &

sleep 2
echo ""
ps | grep mongo | grep -v grep

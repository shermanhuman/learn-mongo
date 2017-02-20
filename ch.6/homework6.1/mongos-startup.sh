echo "Starting mongos 001 ..."
mongos --configdb configrs/localhost:27010,localhost:27020,localhost:27030 --port 27001 --pidfilepath 001/pid --logpath 001/app.log --logappend &

# Start the server
python server.py &

# Wait for the server to start
sleep 1

# Start 4 client processes
python client.py &
python client.py &
python client.py &
python client.py &


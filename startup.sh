#! /bin/bash
rm client driver_to_client_pb2.py
wget https://raw.githubusercontent.com/brown-csci1680/cdn-client-code/master/client
wget https://raw.githubusercontent.com/brown-csci1680/cdn-client-code/master/driver_to_client_pb2.py
chmod +rwx client driver_to_client_pb2.py
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
pip3 install requests
pip3 install protobuf
./client

# CDN Client
This CDN client is intended to be run as a Linux service on a distributed set of 
computers. Its usage is to respond to GET requests of the following form:
    GET <url> HTTP/1.1
    Host: http://<DNS server IP addr>:<DNS server port>

Upon receiving this GET request, the client will do the following:
    1) Send a DNS query for the provided URL to the given DNS server/port
    2) Get the DNS response
    3) Issue a GET request for the resolved address
    4) Send the requester an HTTP response which is exactly the same as the one
       returned by the server with one additional header flag:
        Time-Elapsed: <time taken to get the data from the IP resolved by DNS>

# Dependencies
    - python 3.7
We provide the code here so that the script named `startup.sh` may be executed successfully on Google Cloud VMs. To make this work, simply follow [Runninng startup scripts](https://cloud.google.com/compute/docs/startupscript) instructions, and paste the content of `startup` into the box.

`startup` will:
  1) call wget on `client` and the `driver_to_client_pb2.py` from this repo.
  2) execute `./client`
  
This will spin up a CDN client as defined in the project PDF. 

IF YOU MAKE A CHANGE TO THIS CODE AND WANT IT ON ALL OF THE CLIENTS, YOU MUST
1) push your changes
2) RESET every client VM.
This will automatically get the updated code up and running on every client VM at once

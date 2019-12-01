# cdn-client-code
Provides version controlled client code. This should simply be a copy of the client python script located in the version controlled department filesystem. We provide the code here so that the script named `startup` may be executed successfully on Google Cloud VMs. To make this work, simply follow [Runninng startup scripts](https://cloud.google.com/compute/docs/startupscript) instructions, and paste the content of `startup` into the box.

`startup` will:
  1) call wget on `client` and the `driver_to_client_pb2.py` from this repo.
  2) execute `./client`
  
This will spin up a CDN client as defined in the project PDF.

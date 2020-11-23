
#!/bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@18.202.57.44 << EOF
docker login -u nikitakooner -p 
docker push nikitakooner/front_end:latest
docker push nikitakooner/back_end:latest
EOF

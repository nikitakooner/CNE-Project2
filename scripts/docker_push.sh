
#!/bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@54.154.252.207 << EOF
docker login -u nikitakooner -p Tarplee.12
docker push nikitakooner/front_end:latest
docker push nikitakooner/back_end:latest
EOF

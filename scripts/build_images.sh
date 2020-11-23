
#!/bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@54.154.252.207 << EOF
cd CNE_PracticalProject/
cd frontend/
docker build -t nikitakooner/front_end:latest .
cd ..
cd backend/
docker build -t nikitakooner/back_end:latest .
EOF
~

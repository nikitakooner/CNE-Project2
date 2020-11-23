
#!/bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@18.202.57.44 << EOF
cd CNE_Project2/
cd frontend/
docker build -t nikitakooner/front_end:latest .
cd ..
cd backend/
docker build -t nikitakooner/back_end:latest .
EOF
~

# `
# <p>sudo apt update</p>
# <p> sudo apt install python3.9 </p>
# sudo apt update
# sudo apt install python3.9-venv python3.9-distutils
# wget https://bootstrap.pypa.io/get-pip.py
# sudo python3.9 get-pip.py
# pip3.9 --version OR pip --version
# pip3.9 install cffi
# pip install prowler
# pip install testresources
# sudo python3.9 get-pip.py
# `

# <p>testing aws Iac with prowler</p>
# $ prowler aws --list-categories
# $ prowler aws --list-compliance
# prowler aws  // it will security scan all the services on aws
# prowler aws --services s3 ec2 // it will security scan s3 bucket and ec2 

# prowler aws --excluded-checks s3_bucket_public_access // it will scan all the services except s3_bucket_public_access
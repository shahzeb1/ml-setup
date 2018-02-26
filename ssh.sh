PRIVATE_KEY="### your .pem key name ###"

AWS=`aws ec2 describe-instances --query 'Reservations[*].Instances[*].PublicDnsName' --output text`
echo "ssh-ing into $AWS"
ssh -i $PRIVATE_KEY -L 8157:127.0.0.1:8888 ec2-user@$AWS

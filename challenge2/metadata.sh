#!bin/bash
#This script will provide you details of ec2 , rds & s3
echo "This script will provide you the metadata of following AWS resource"
echo "You need to provide two inputs"
echo "whoch instance details you want to get"
echo "ec2 , rds, s3"
echo "Select among [ec2 , rds, s3]"
read service 

case $service in
        ec2)
                echo "Here is your query result for ec2"
                echo "Provide the ec2 instance id"
                read instance_id
                aws ec2 describe-instances --instance-id $instance_id --output json 
                ;;               

        s3)
                echo "S3 metadata details"
                echo "Provide the bucket name"
                read bucket
                echo "Provide the key details of S3 object"
                read object
                aws s3api head-object --bucket $bucket --key $object --output json
                ;;

        rds)
                echo "RDS details"
                echo "Provide the DB identifier name"
                read db_identifier
                aws rds describe-db-instances --db-instance-identifier $db_identifier --output json
                ;;
        *)
                echo "Select any options"
esac

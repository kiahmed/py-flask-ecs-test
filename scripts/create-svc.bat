echo "Create a new service with single task instance"
aws ecs create-service ^
    --service-name flask-signup-service ^
    --cluster jnk_tst_cluster ^
    --task-definition "flask-signup:6" ^
    --desired-count 1 ^
    --launch-type "FARGATE" ^
    --network-configuration "awsvpcConfiguration={subnets=[subnet-59b23d23,subnet-7681773a,subnet-9b3869f3],assignPublicIp='ENABLED',securityGroups=sg-c76332ad}" ^
    --load-balancers "targetGroupArn=arn:aws:elasticloadbalancing:us-east-2:509089852375:targetgroup/dfd-3229/75ba127d4841a3af, containerName=flask-signup,containerPort=5000" ^
    --profile dittrex --region us-east-2
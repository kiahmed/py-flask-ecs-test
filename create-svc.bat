aws ecs create-service --cluster jnk_tst_cluster --service-name flask-signup-service --task-definition flask-signup:4 ^
--load-balancers "loadBalancerName=ecs-load-balancer,targetGroupArn=alb-tg,containerName=flask-signup,containerPort=5000" ^
--role arn:aws:iam::509089852375:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS --desired-count 0 ^ 
--subnets subnet-59b23d23 subnet-7681773a subnet-9b3869f3 ^
--launch-type "FARGATE"
--profile dittrex --region us-east-2
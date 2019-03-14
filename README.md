# py-flask-signup-docker
This Python sample application is based on the [eb-py-flask-signup](https://github.com/awslabs/eb-py-flask-signup) sample. It has been modified to run on Amazon EC2 Container Service (ECS) and use the jenkins ecs plugin not ecs-cli.
changed agaain

#3 509089852375.dkr.ecr.us-east-2.amazonaws.com/py-flask-ecs-test:v_BUILD_NUMBER 509089852375.dkr.ecr.us-east-2.amazonaws.com/py-flask-ecs-test:latest (Mar 8, 2019 10:36:47 PM)
testing again withot previuosu images

aws ecs update-service --cluster jnk_tst_cluster --service flask-signup-service --task-definition flask-signup:4 --desired-count 1 --region us-east-2
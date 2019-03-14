sed -e "s;%BUILD_NUMBER%;$1;g" flask-signup.json > flask-signup-v_$1.json
aws ecs register-task-definition --cli-input-json file://flask-signup-v_$1.json --profile dittrex --region us-east-2
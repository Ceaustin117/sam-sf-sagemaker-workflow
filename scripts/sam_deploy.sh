S3_BUCKET=dev-bucket-mlops-chris
S3_BUCKET_MODEL=dev-mlops-cicd-chris
STACK_NAME=dev-sam-sf-sagemaker-workflow-chris
sam build  -t cfn/sam-template.yaml
sam deploy --template-file .aws-sam/build/template.yaml --stack-name ${STACK_NAME} --force-upload --s3-bucket ${S3_BUCKET} \
           --s3-prefix sam --parameter-overrides S3ModelBucket=${S3_BUCKET_MODEL} --capabilities CAPABILITY_IAM
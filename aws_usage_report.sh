#!/bin/bash

echo "Fetching AWS Resource Usage and Cost Report..."

echo "----------------------------------------"
echo "EC2 Instances:"
aws ec2 describe-instances --query "Reservations[*].Instances[*].[InstanceId,InstanceType,State.Name]" --output table

echo "----------------------------------------"
echo "S3 Buckets:"
aws s3 ls

echo "----------------------------------------"
echo "Lambda Functions:"
aws lambda list-functions --query "Functions[*].[FunctionName,Runtime,LastModified]" --output table

echo "----------------------------------------"
echo "AWS Cost (Last 7 Days):"
aws ce get-cost-and-usage \
    --time-period Start=$(date -d "7 days ago" +%Y-%m-%d),End=$(date +%Y-%m-%d) \
    --granularity DAILY \
    --metrics "UnblendedCost" \
    --query "ResultsByTime[*].[TimePeriod.Start,Total.UnblendedCost.Amount]" \
    --output table

echo "----------------------------------------"
echo "Report Complete!"

**AWS Resource Usage & Cost Reporting Script**  
Automated AWS CLI–based reporting for EC2, S3, Lambda, and Cost Explorer  

📌 **Project Overview**  
This project is a **Bash automation script** that retrieves real time AWS resource usage and cost details using AWS CLI.  
It helps you quickly understand:  
•	What resources you are running  
•	How much they cost  
•	Whether anything is unused or underutilized  
•	How to monitor your AWS environment efficiently  
This is a practical DevOps focused project demonstrating automation, cloud monitoring, and CLI proficiency.  

🚀 **Features**  
•	Fetches **EC2 instance details** (ID, type, state, region)  
•	Lists **S3 buckets** with creation dates  
•	Retrieves **Lambda functions** with runtime and region  
•	Pulls **daily AWS cost** using Cost Explorer  
•	Outputs everything in a clean, readable format  
•	Works across any AWS account with proper IAM permissions  

🛠️ **Tech Stack**

<img width="840" height="276" alt="image" src="https://github.com/user-attachments/assets/d47b8c87-b9e9-4f5d-a6bc-bb67fc5c63cd" />


📂 **Project Structure**
aws-resource-report/  
│  
├── aws_resource_report.sh       # Main script  
├── README.md                    # Documentation  
└── sample_output.txt            # Example output (optional)  

📜 **Script Usage**

Run the script from your terminal:  
bash aws_resource_report.sh  

Make sure your AWS CLI is configured:  
aws configure  

You will need:  
•	Access key  
•	Secret key  
•	Default region  
•	Output format (json/text/table)  

==============================  
 AWS RESOURCE USAGE REPORT  
==============================  

EC2 INSTANCES:  
- i-0abcd1234ef567890 | t2.micro | running | us-east-1  

S3 BUCKETS:  
- my-demo-bucket | Created: 2024-01-12  

LAMBDA FUNCTIONS:  
- processDataFunction | python3.9 | us-east-1  

DAILY COST:  
- $1.42 (Last 24 hours)  


🎯 **Skills Demonstrated**  
•	AWS CLI automation  
•	Shell scripting  
•	Cloud resource monitoring  
•	Cost optimization awareness  
•	GitHub project documentation  
•	DevOps oriented reporting workflow  


📊 **Workflow Diagram**  

<img width="911" height="606" alt="image" src="https://github.com/user-attachments/assets/5525f488-2979-45fa-a3d6-b09b8b065f37" />




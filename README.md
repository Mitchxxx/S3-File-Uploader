
# AWS S3 File Sorting System with React Frontend

This project sets up an AWS infrastructure to automatically process and sort uploaded files into designated folders based on their file extensions. It leverages AWS S3, AWS Lambda, and Terraform for infrastructure setup and management. Additionally, it provides a ReactJS frontend application for users to upload files to AWS S3.

### Steps

1. **Clone the Repository 


   ```
   git clone https://github.com/cloudcore-hub/s3-file-uploader.git
   ```

2. **Navigate to the Project Directory**

   Change to the project directory in your terminal:

   ```
   cd S3-File-Uploader
   ```


3. **Install Dependencies**

   Install the project's dependencies by running:

   ```
   npm install
   ```

   This command reads the `package.json` file and installs all the required packages.

4. **Start the Development Server**

   Launch the development server with:

   ```
   npm run dev
   ```

   This command starts a local web server and opens the app in your default web browser. The development server watches for changes to your source code, so you can see updates in real-time as you develop.

5. **Access the App**

   By default, the app will be available at [http://localhost:3000](http://localhost:3000). Navigate to this URL in your web browser to view the app.

### Resources Clean-up using Terraform

#### Prepare the files

Comment this line in `lambda.tf` file 
`source_code_hash = filebase64sha256(var.lambda_source_file)`

Add this line to the file 
`source_code_hash = "placeholder"`

#### Delete the contents in the S3 bucket  

Be sure you have awscli in setup locally.

run `aws s3 rm s3://<bucket-name> --recursive`
```
aws s3 rm s3://cloudcore-s3-file-in --recursive
aws s3 rm s3://cloudcore-s3-file-out --recursive
```

```
terraform login
```
 Type in `yes` and paste the token from Terraform Cloud

 cd into the the folder with the terraform file `/terraform`

 Run 
 ```
 terraform init
 ```

then 

```
terraform destroy -auto-approve
```


### Conclusion

This project leverages AWS S3 for robust and scalable storage solutions, along with AWS Lambda for efficient, serverless computing. The automation of file uploads and sorting based on file types addresses key challenges in file management and data processing, making it a valuable solution for businesses and individual users looking to optimize their digital asset management and processing workflows.

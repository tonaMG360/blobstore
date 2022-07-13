# Blobstore 
Creating GCP Cloud Storage


The resources/services that this will create are:

One GCP Cloud Storage or bucket implemented with Terraform

Solving the following problems:
1) Read Access for users
2) cURL access 
3) Variables File to deploy it several times with different names

# Inputs

| Name | Description | Type | Required |
|------|-------------|------|----------|
| members | IAM-style members who will be granted roles/storage.objectViewer on all buckets.|	list(string) | yes |
| project ID | Project ID | string | yes |
| location   | Zone where the bucket is created | string   | yes |
| name | Bucket's name | string | yes | 


# Outputs

| Name | Description |
|------|-------------|
| bucket | Bucket's name|
| URL | Bucket's URL | 


Software
The following dependencies must be available:

Terraform >= 0.13.0
For Terraform v0.11 see the Compatibility section above
Terraform Provider for GCP plugin v4.28

Google Cloud Storage JSON API: storage-api.googleapis.com



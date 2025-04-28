gcloud iam service-accounts delete pgbackup-sa@$PROJECT_ID.iam.gserviceaccount.com
gsutil rm -r gs://$BUCKET_NAME

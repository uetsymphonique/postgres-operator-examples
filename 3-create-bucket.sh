gcloud iam service-accounts create pgbackup-sa \
    --description="Service account for Postgres backup to GCS" \
    --display-name="Postgres Backup SA"

gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member="serviceAccount:pgbackup-sa@$PROJECT_ID.iam.gserviceaccount.com" \
    --role="roles/storage.admin"

gcloud iam service-accounts keys create ./pgbackup-sa-key.json \
    --iam-account=pgbackup-sa@$PROJECT_ID.iam.gserviceaccount.com

cp pgbackup-sa-key.json postgres-operator-examples/kustomize/demo-postgres/gcs-key.json 

gsutil mb -l $REGION -p $PROJECT_ID gs://$BUCKET_NAME


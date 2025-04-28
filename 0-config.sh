export PROJECT_ID=$(gcloud config get-value project)
export REGION="us-central1"
export ZONE="us-central1-a"
export CLUSTER_NAME="postgres-cluster"
export BUCKET_NAME="uetsymphonique-postgres-backup-bucket"


echo Cluster name: $CLUSTER_NAME
echo Region: $REGION / Zone: $ZONE
echo Project ID: $PROJECT_ID
echo Bucket name: $BUCKET_NAME
gcloud config set compute/region $REGION
gcloud config set compute/zone $ZONE

gcloud config list

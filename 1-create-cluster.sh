gcloud container clusters create $CLUSTER_NAME \
    --num-nodes=3 \
    --machine-type=n1-standard-2 \
    --disk-size=60GB \
    --zone=$ZONE \
    --release-channel=regular

gcloud container clusters get-credentials $CLUSTER_NAME --zone $ZONE

kubectl config current-context
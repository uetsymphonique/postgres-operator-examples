gcloud container clusters delete $CLUSTER_NAME --zone $ZONE --quiet

gcloud compute disks list --filter="name~^pvc-" --format="value(name,zone)" | while read disk zone; do
  gcloud compute disks delete "$disk" --zone="$zone" --quiet
done
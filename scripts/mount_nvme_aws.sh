# Mount NVMe drive on AWS instances.
#
# Usage:
# sudo bash mount_nvme_gcp.sh ~/
# sudo bash mount_nvme_gcp.sh /home/sqy1415/

if [ "$1" = "" ]
then
  echo "Usage: $0 mount_path"
  exit
fi

mkfs -t xfs -f /dev/nvme1n1
rm -rf $1flexllmgen_offload_dir
mkdir $1flexllmgen_offload_dir
mount /dev/nvme1n1 $1flexllmgen_offload_dir
chmod a+rw $1flexllmgen_offload_dir

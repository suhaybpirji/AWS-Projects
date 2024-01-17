# Set your VirtualBox VM name
VM_NAME="your_vm_name"

# Set the export file name
EXPORT_FILE="exported_vm.ova"

# Set your AWS S3 bucket name
S3_BUCKET="your-s3-bucket-name"

# Set your AWS S3 bucket path
S3_PATH="s3://${S3_BUCKET}/path/to/exported_vm.ova"

# Export the VirtualBox VM to OVA file
VBoxManage export "${VM_NAME}" -o "${EXPORT_FILE}"

# Check if the export was successful
if [ $? -eq 0 ]; then
  echo "VM export successful."

  # Upload the exported OVA file to AWS S3
  aws s3 cp "${EXPORT_FILE}" "${S3_PATH}"

  # Check if the upload was successful
  if [ $? -eq 0 ]; then
    echo "Upload to S3 successful."
  else
    echo "Error: Upload to S3 failed."
  fi

  # Clean up - remove the local exported file
  rm "${EXPORT_FILE}"

else
  echo "Error: VM export failed."
fi

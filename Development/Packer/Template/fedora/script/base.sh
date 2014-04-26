# Base install

# Make ssh quicker in disconnected situations.
echo 'UseDNS no' >> /etc/ssh/sshd_config

# Update yum repos
yum update -y

# Ensure NFS mounts work properly
yum install -y nfs-utils

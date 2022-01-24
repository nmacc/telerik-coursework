## Node IPs
loadbalancer_ip = "192.168.77.209"
coredns_ip = "192.168.77.208"
bootstrap_ip = "192.168.77.207"
master_ips = ["192.168.77.201", "192.168.77.202", "192.168.77.203"]
#worker_ips = ["192.168.5.164", "192.168.5.165"]
worker_ips = ["192.168.77.204", "192.168.77.205", "192.168.77.206"]

## Cluster configuration
vmware_folder = "ocp4"
rhcos_template = "rhcos-4.9.0"
cluster_slug = "ocp"
cluster_domain = "lab.local"
machine_cidr = "192.168.77.0/24"
netmask ="255.255.255.0"

## DNS
local_dns = "192.168.77.208" # probably the same as coredns_ip
public_dns = "8.8.8.8" # e.g. 1.1.1.1
gateway = "192.168.77.1"

## Ignition paths
## Expects `openshift-install create ignition-configs` to have been run
## probably via generate-configs.sh
bootstrap_ignition_path = "./openshift/bootstrap.ign"
master_ignition_path = "./openshift/master.ign"
worker_ignition_path = "./openshift/worker.ign"

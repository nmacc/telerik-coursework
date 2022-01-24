###########################
## OCP Cluster Vars

variable "cluster_slug" {
  type = string
}

variable "vmware_folder" {
  type = string
}

#variable "bootstrap_complete" {
#  type    = string
#  default = "false"
#}
################
## VMware vars - unlikely to need to change between releases of OCP

variable "rhcos_template" {
  type = string
}

variable "vsphere_user" {
  type = string
}

variable "vsphere_password" {
  type = string
}

variable "vsphere_server" {
  type = string
}

data "vsphere_datacenter" "dc" {
  name = "TBS-LAB"
}

data "vsphere_compute_cluster" "cluster" {
  name          = "TBS-LAB"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name          = "dpg-VLAN-66"
  datacenter_id = data.vsphere_datacenter.dc.id
}

#data "vsphere_datastore" "nvme" {
#  name          = "LAB-ST1-DS2"
#  datacenter_id = data.vsphere_datacenter.dc.id
#}

data "vsphere_datastore_cluster" "nvme" {
  name          = "LAB-ST1"
  datacenter_id = data.vsphere_datacenter.dc.id
}

##########
## Ignition

variable "ignition" {
  type    = string
  default = ""
}

#########
## Machine variables

variable "bootstrap_ignition_path" {
  type    = string
  default = ""
}

variable "master_ignition_path" {
  type    = string
  default = ""
}

variable "worker_ignition_path" {
  type    = string
  default = ""
}

variable "master_ips" {
  type    = list(string)
  default = []
}

variable "worker_ips" {
  type    = list(string)
  default = []
}

variable "bootstrap_ip" {
  type    = string
  default = ""
}

variable "loadbalancer_ip" {
  type    = string
  default = ""
}

variable "coredns_ip" {
  type    = string
  default = ""
}

variable "cluster_domain" {
  type = string
}

variable "machine_cidr" {
  type = string
}

variable "gateway" {
  type = string
}

variable "local_dns" {
  type = string
}

variable "public_dns" {
  type = string
}

variable "netmask" {
  type = string
}
# Copyright 2017, 2019 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

# oci provider
variable "tenancy_id" {}

# general oci parameters
variable "compartment_id" {}

variable "label_prefix" {}

# ssh keys

variable "ssh_public_key" {}

variable "ssh_public_key_path" {}

# oke
variable "cluster_kubernetes_version" {}

variable "control_plane_type" {}

variable "control_plane_nsgs" {
  type = list(string)
}

variable "cluster_name" {}

variable "cluster_options_add_ons_is_kubernetes_dashboard_enabled" {
  type = bool
}

variable "cluster_options_kubernetes_network_config_pods_cidr" {}

variable "cluster_options_kubernetes_network_config_services_cidr" {}

variable "cluster_subnets" {
  type = map(any)
}

variable "vcn_id" {}

# encryption
variable "use_cluster_encryption" {
  type = bool
}

variable "cluster_kms_key_id" {}

variable "use_node_pool_volume_encryption" {
  type = bool
}

variable "node_pool_volume_kms_key_id" {}

variable "enable_pv_encryption_in_transit" {
  type = bool
}

variable "create_policies" {
  type        = bool
}

# signed images
variable "use_signed_images" {
  type = bool
}

variable "image_signing_keys" {
  type = list(string)
}

# admission controller options
variable "admission_controller_options" {
  type = map(any)
}

variable "node_pools" {
  type = any
}

variable "node_pool_name_prefix" {}

variable "node_pool_image_id" {}

variable "node_pool_os" {}

variable "node_pool_os_version" {}

variable "node_pool_timezone" {}

variable "preferred_load_balancer" {}

variable "worker_nsgs" {
  type = list(any)
}

variable "freeform_tags" {
  type = map(any)
}

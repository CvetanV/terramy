# Dataset info
variable "datasetid" {default = "dataset_mesh_prod"}
variable "location" {default = "europe-north1"}

# Customer table info
variable "customerTable" {default = "table_customer"}
variable "customerSoruceFormat" {default = "PARQUET"}
variable "customerSourceAddress" {default = "gs://mybucket0306/PROD/customer/part-*.parquet"}

# Lineitem table info
variable "lineitemTable" {default = "table_lineitem"}
variable "lineitemSoruceFormat" {default = "PARQUET"}
variable "lineitemSourceAddress" {default = "gs://mybucket0306/PROD/customer/part-*.parquet"}

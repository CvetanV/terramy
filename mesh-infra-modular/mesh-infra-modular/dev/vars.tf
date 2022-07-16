# Dataset info
variable "datasetid" {default = "dataset_mesh_staging"}
variable "location" {default = "europe-north1"}

# Customer table info
variable "customerTable" {default = "table_customer"}
variable "customerSoruceFormat" {default = "PARQUET"}
variable "customerSourceAddress" {default = "gs://mesh-source-domain-tpch/STAGING/mesh-customer/part-*.parquet"}

# Lineitem table info
variable "lineitemTable" {default = "table_lineitem"}
variable "lineitemSoruceFormat" {default = "PARQUET"}
variable "lineitemSourceAddress" {default = "gs://mesh-source-domain-tpch/STAGING/mesh-lineitem/part-*.parquet"}

# Nation table info
variable "nationTable" {default = "table_nation"}
variable "nationSoruceFormat" {default = "PARQUET"}
variable "nationSourceAddress" {default = "gs://mesh-source-domain-tpch/STAGING/mesh-nation/part-*.parquet"}

# Orders table info
variable "ordersTable" {default = "table_orders"}
variable "ordersSoruceFormat" {default = "PARQUET"}
variable "ordersSourceAddress" {default = "gs://mesh-source-domain-tpch/STAGING/mesh-orders/part-*.parquet"}

# Part table info
variable "partTable" {default = "table_part"}
variable "partSoruceFormat" {default = "PARQUET"}
variable "partSourceAddress" {default = "gs://mesh-source-domain-tpch/STAGING/mesh-part/part-*.parquet"}

# Partsupp table info
variable "partsuppTable" {default = "table_partsupp"}
variable "partsuppSoruceFormat" {default = "PARQUET"}
variable "partsuppSourceAddress" {default = "gs://mesh-source-domain-tpch/STAGING/mesh-partsupp/part-*.parquet"}

# Region table info
variable "regionTable" {default = "table_region"}
variable "regionSoruceFormat" {default = "PARQUET"}
variable "regionSourceAddress" {default = "gs://mesh-source-domain-tpch/STAGING/mesh-region/part-*.parquet"}

# Supplier table info
variable "supplierTable" {default = "table_supplier"}
variable "supplierSoruceFormat" {default = "PARQUET"}
variable "supplierSourceAddress" {default = "gs://mesh-source-domain-tpch/STAGING/mesh-supplier/part-*.parquet"}


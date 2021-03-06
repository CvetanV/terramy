terraform {
    required_version = ">=0.12"
}

# create one dataset
module "bq_dataset" {
  source = "../modules/bq_dataset"
  datasetid = var.datasetid
  location = var.location
}

# create one table
module "bq_table" {
  for_each = var.project
  source = "../modules/bq_table"
  dataset_id = var.datasetid

  name    = "${each.key}"
  format  = "${each.value.format}"
  address = "${each.value.address}"
}

variable "project" {
  description = "Map of project names to configuration."
  type        = map
  default     = {
    table_customer = {
        format: "PARQUET",
        address: "gs://mybucket0306/PROD/customer/*"
    }
  }
}

terraform {
    required_version = ">=0.12"
}

resource "google_bigquery_dataset" "dataset_mesh_staging" {
 datasetid = var.datasetid
 location = var.location
}


resource "google_bigquery_table" "table_customer" {
 table_id = var.customerTable
 dataset_id = google_bigquery_dataset.dataset_mesh_tf.dataset_id
 external_data_configuration {
    autodetect    = true
    source_format = var.customerSoruceFormat
    source_uris = [var.customerSourceAddress]
 }
}
resource "google_bigquery_table" "table_lineitem" {
 table_id = var.lineitemTable
 dataset_id = google_bigquery_dataset.dataset_mesh_tf.dataset_id
 external_data_configuration {
    autodetect    = true
    source_format = var.lineitemSoruceFormat
    source_uris = [var.lineitemSourceAddress]
 }
}
resource "google_bigquery_table" "table_nation" {
 table_id = var.nationTable
 dataset_id = google_bigquery_dataset.dataset_mesh_tf.dataset_id
 external_data_configuration {
    autodetect    = true
    source_format = var.nationSoruceFormat
    source_uris = [var.nationSourceAddress]
 }
}
resource "google_bigquery_table" "table_orders" {
 table_id = var.ordersTable
 dataset_id = google_bigquery_dataset.dataset_mesh_tf.dataset_id
 external_data_configuration {
    autodetect    = true
    source_format = var.ordersSoruceFormat
    source_uris = [var.ordersSourceAddress]
 }
}
resource "google_bigquery_table" "table_part" {
 table_id = var.partTable
 dataset_id = google_bigquery_dataset.dataset_mesh_tf.dataset_id
 external_data_configuration {
    autodetect    = true
    source_format = var.partSoruceFormat
    source_uris = [var.partSourceAddress]
 }
}
resource "google_bigquery_table" "table_partsupp" {
 table_id = var.partsuppTable
 dataset_id = google_bigquery_dataset.dataset_mesh_tf.dataset_id
 external_data_configuration {
    autodetect    = true
    source_format = var.partsuppSoruceFormat
    source_uris = [var.partsuppSourceAddress]
 }
}
resource "google_bigquery_table" "table_region" {
 table_id = var.regionTable
 dataset_id = google_bigquery_dataset.dataset_mesh_tf.dataset_id
 external_data_configuration {
    autodetect    = true
    source_format = var.regionSoruceFormat
    source_uris = [var.regionSourceAddress]
 }
}
resource "google_bigquery_table" "table_supplier" {
 table_id = var.supplierTable
 dataset_id = google_bigquery_dataset.dataset_mesh_tf.dataset_id
 external_data_configuration {
    autodetect    = true
    source_format = var.supplierSoruceFormat
    source_uris = [var.supplierSourceAddress]
 }
}



resource "google_bigquery_table" "table" {
 table_id = var.name
 dataset_id = var.dataset_id

 external_data_configuration {
    autodetect    = true
    source_format = var.format
    source_uris = [var.address]
 }

}
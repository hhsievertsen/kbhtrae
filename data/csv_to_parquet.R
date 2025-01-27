# csv to parquet
df <- data.table::fread("trae_basis.csv")
arrow::write_parquet(df,"trae_basis.parquet")
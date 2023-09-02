CREATE TABLE IF NOT EXISTS specialOfferProduct (
    SpecialOfferID INT,
    ProductID INT,
    rowguid STRING,
    ModifiedDate STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

LOAD DATA INPATH 'hdfs://cluster-infnet-m/user/leonardo_smoreira/bike_company/project_files/SpecialOfferProduct.csv' INTO TABLE specialOfferProduct;

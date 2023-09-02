CREATE TABLE IF NOT EXISTS customer (
    CustomerID INT,
    PersonID STRING,
    StoreID DOUBLE,
    TerritoryID INT,
    AccountNumber STRING,
    rowguid STRING,
    ModifiedDate STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

LOAD DATA INPATH 'hdfs://cluster-infnet-m/user/leonardo_smoreira/bike_company/project_files/Customer.csv' INTO TABLE customer;

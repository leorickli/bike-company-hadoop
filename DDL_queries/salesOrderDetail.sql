CREATE TABLE IF NOT EXISTS salesOrderDetail (
    SalesOrderID INT,
    SalesOrderDetailID INT,
    CarrierTrackingNumber STRING,
    OderQty INT,
    ProductID INT,
    SpecialOfferID INT,
    UnitPrice INT,
    UnitPriceDiscount INT,
    LineTotal INT,
    rowguid STRING,
    ModifiedDate STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

LOAD DATA INPATH 'hdfs://cluster-infnet-m/user/leonardo_smoreira/bike_company/project_files/SalesOrderDetail.csv' INTO TABLE salesOrderDetail;

CREATE TABLE IF NOT EXISTS product (
    ProductID INT,
    Name STRING,
    ProductNumber INT,
    MakeFlag INT,
    FinishedGoodsFlag INT,
    Color STRING,
    SafetyStockLevel INT,
    ReorderPoint INT,
    StandardCost STRING,
    ListPrice INT,
    Size STRING,
    SizeUnitMeasureCode STRING,
    WeightUnitMeasureCode STRING,
    Weight STRING,
    DaysToManufacture INT,
    ProductLine STRING,
    Class STRING,
    Style STRING,
    ProductSubcategoryID STRING,
    ProductModelID STRING,
    SellStartDate STRING,
    SellEndDate STRING,
    DiscontinuedDate STRING,
    rowguid STRING,
    ModifiedDate STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

LOAD DATA INPATH 'hdfs://cluster-infnet-m/user/leonardo_smoreira/bike_company/project_files/Product.csv' INTO TABLE product;

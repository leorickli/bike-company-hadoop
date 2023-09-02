CREATE TABLE IF NOT EXISTS salesOrderHeader (
    SalesOrderID INT,
    RevisionNumber INT,
    OrderDate STRING,
    DueDate STRING,
    ShipDate STRING,
    Status INT,
    OnlineOrderFlag INT,
    SalesOrderNumber STRING,
    PurchaseOrderNumber STRING,
    AccountNumber STRING,
    CustomerID INT,
    SalesPersonID INT,
    TerritoryID INT,
    BillToAddressID INT,
    ShipToAddressID INT,
    ShipMethodID INT,
    CreditCardID INT,
    CreditCardApprovalCode STRING,
    CurrencyRateID INT,
    SubTotal INT,
    TaxAmt INT,
    Freight INT,
    TotalDue INT,
    Comment STRING,
    rowguid STRING,
    ModifiedDate STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

LOAD DATA INPATH 'hdfs://cluster-infnet-m/user/leonardo_smoreira/bike_company/project_files/SalesOrderHeader.csv' INTO TABLE salesOrderHeader;

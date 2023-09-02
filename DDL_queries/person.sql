CREATE TABLE IF NOT EXISTS person (
    BusinessEntityID INT,
    PersonType STRING,
    NameStyle INT,
    Title STRING,
    FirstName STRING,
    MiddleName STRING,
    LastName STRING,
    Suffix STRING,
    EmailPromotion INT,
    AdditionalContactInfo STRING,
    Demographics STRING,
    rowguid INT,
    ModifiedDate STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

LOAD DATA INPATH 'hdfs://cluster-infnet-m/user/leonardo_smoreira/bike_company/project_files/Person.csv' INTO TABLE person;

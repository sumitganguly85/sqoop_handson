sqoop import --connect jdbc:mysql://quickstart.cloudera/retail_db --username root --password cloudera --table departments -m 1 --hive-import
sqoop create-hive-table  --connect jdbc:mysql://quickstart.cloudera/retail_db --username root --password cloudera --table order_items  --fields-terminated-by ',';

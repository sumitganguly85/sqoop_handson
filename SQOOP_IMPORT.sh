#!/usr/bin/bash

filename="$1" # File Name where name of Source tables are mentioned of a given database
log_file_name="$2" # Log File name with path to write Sqoop Output
rdbms_source_type="$3" # RDBMS Source DB type - SqlServer/Oracle/Mysql etc.
rdbms_server_ip="$4" # IP of RDBMS Server
rdbms_server_port="$5" # Database Server Port Number (Ex - 1433 for SQLServer, 1521 - For Oracle etc)
rdbms_db_name="$6" # Name of Database to be imported
while read -r line
do
        name="$line"

        echo "Sqoop Import Starting For Table : "$name>>$log_file_name
        echo "============================================================">>$log_file_name
		db_source_typ=$(echo "$rdbms_source_type" | awk '{print tolower($0)}')
		if [$db_source_typ == "mysql"]
		then
			sql_driver=$rdbms_server_ip
		
        sql_driver="jdbc:sqlserver://10.128.26.237:1433;database=COD_Main"
        sql_driver="\"$sql_driver\""
        sqoop_query="sqoop import --connect $sql_driver --username sa --password Passw0rd --table $name --hive-import --create-hive-table --hive-table cod_main.$name --warehouse-dir /user/landing --hive-overwrite -m 1 --verbose"
        echo  $sqoop_query>>$log_file_name
        echo "------Log Start---------">>$log_file_name
        $sqoop_query 1>>$log_file_name 2>>$log_file_name
        echo "------Log Ends----------">>$log_file_name
        echo "Sqoop Import Completed For Table :"$name>>$log_file_name
        echo "******************-END-***************">>$log_file_name
        sleep 60
done < "$filename"
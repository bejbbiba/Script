#get-process -name svchost | Format-Table | Select-Object CPU | Sort-Object -Descending 
get-service | measure-object

select 
'insert into testing.customers(customer_id, first_name, last_name, phone, email,
street, city, state, zip_code, InsertionDate) values ' 
+'(' + isnull(cast(customer_id as varchar(max)), 'NULL') + ', ' 
+ isnull('''' + replace(first_name, '''', '''''') + '''', 'NULL') + ', ' 
+ isnull('''' + replace(last_name, '''', '''''') + '''', 'NULL') + ', ' 
+ isnull('''' + phone + '''', 'NULL') + ', ' 
+ isnull('''' + replace(email, '''', '''''') + '''', 'NULL') + ', ' 
+ isnull('''' + replace(street, '''', '''''') + '''', 'NULL') + ', ' 
+ isnull('''' + replace(city, '''', '''''') + '''', 'NULL') + ', ' 
+ isnull('''' + state + '''', 'NULL') + ', ' 
+ isnull('''' + zip_code + '''', 'NULL') + ', ' 
+ isnull(''''+convert(varchar, InsertionDate, 21) + '''', 'NULL') 
+ '); '
from Sales.customers with(nolock) 

select * from Sales.customers
select * from testing.customers
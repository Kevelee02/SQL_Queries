---Juntando o primeiro e último nome, e nome da empresa para criar um email profissional e usando replace para tirar os espaços
Select first_name, last_name, concat(first_name,'.',last_name,'@',replace(name,' ',''),'.com') as email
from (Select name,primary_poc, 
  position(' ' in primary_poc),
  left(primary_poc,position(' ' in primary_poc)-1) as first_name, 
  Right(primary_poc, length(primary_poc) -position(' ' in primary_poc)) as last_name
from accounts) as t1

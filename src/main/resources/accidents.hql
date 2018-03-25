select
date_format(from_unixtime(unix_timestamp(`Date`, 'dd/MM/yyyy')), 'MM-yyyy'),
sum(number_of_casualties)
from accidents
group by date_format(from_unixtime(unix_timestamp(`Date`, 'dd/MM/yyyy')), 'MM-yyyy')
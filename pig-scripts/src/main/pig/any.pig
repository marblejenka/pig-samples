log = load 'excite-small.log' as (user:chararray, time:int, query:chararray);

grouped = group log any;
counted = foreach grouped generate group, COUNT(log);
countgrouped = group counted by $1;
result = foreach countgrouped generate group, COUNT($1);

dump result


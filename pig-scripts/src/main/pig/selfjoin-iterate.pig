-- load data from hdfs
records = load 'selfjoin-iterate.txt' as (parent:int, child:int);

-- filter root by filter operator
filtered = filter records by parent == 1;

-- join
one = join filtered by child left outer, records by parent;
result = join one by $3 left outer, records by parent;

-- dump
dump result;

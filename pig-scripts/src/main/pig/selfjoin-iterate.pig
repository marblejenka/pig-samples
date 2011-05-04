records = load 'selfjoin-iterate.txt';
filtered = filter records by $0 == 1;
one = join filtered by $1, records by $0;
two = join one by $3, records by $0;
result = join two by $5, records by $0;

dump result;

records = load 'selfjoin-iterate.txt';
filtered = filter records by $0 == 1;
one = join filtered by $1, records by $0 using 'replicated';
result = join one by $3, records by $0 using 'replicated';
dump result;

one = join filtered by $1, records by $0 using 'skewed';
result = join one by $3, records by $0 using 'skewed';
dump result;

/* この条件だとmergeは使えない */
one = join filtered by $1, records by $0 using 'merge';
result = join one by $3, records by $0 using 'merge';
dump result;

/* この条件だと左外部結合は使えない */
one = join filtered by $1 left outer, records by $0;
result = join one by $3 left outer, records by $0;
dump result;

records = load 'input/ncdc/micro-tab/sample.txt' as (year:chararray, temperature:int, quality:int);
filtered = filter records by temperature != 9999 and (quality == 0 or quality == 1 or quality == 4 or quality == 5 or quality == 9);
grouped = group filtered by year;
result = foreach grouped generate group, MAX(filtered.temperature);
dump result;

illustrate result;

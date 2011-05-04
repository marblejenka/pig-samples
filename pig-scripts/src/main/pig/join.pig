A = load 'input/pig/join/A' as (id:int, name:chararray);
B = load 'input/pig/join/B' as (name:chararray, id:int);
C = join A by name, B by name;

dump C;
/*
illustrate C;
 */

grouped = group C by name;
dump grouped;

/*
illustrate grouped;
 */

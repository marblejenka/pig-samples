A = load 'input/pig/join/A' as (id:int, name:chararray);
B = load 'input/pig/join/B' as (name:chararray, id:int);

cat input/pig/join/A
cat input/pig/join/B

C = join A by id, B by id;
dump C;

D = join A by id left outer, B by id;
dump D;

E = cogroup A by id, B by id;
dump E

F = cogroup A by id outer, B by id outer;
dump F

G = cogroup A by id inner, B by id;
dump G

H = cogroup A by id, B by id inner;
dump H

I = cogroup A by id inner, B by id inner;
dump I

J = foreach I generate flatten(A), flatten(B);
dump J


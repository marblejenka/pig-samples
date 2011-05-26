-- load data from hdfs
source1 = load 'selfjoin-iterate.txt' as (parent:int, child:int);
source2 = load 'selfjoin-iterate.txt' as (parent:int, child:int);
source3 = load 'selfjoin-iterate.txt' as (parent:int, child:int);

-- filter root by filter operator
root = filter source1 by parent == 1;

-- join and projection
one = join root by child left outer, source2 by parent;
one_projected = foreach one generate root::parent as root, root::child as mid, source2::child as leaf;

two = join one_projected by leaf left outer, source3 by parent;
result = foreach two generate one_projected::root as root, one_projected::mid as one, one_projected::leaf as two, source3::child as leaf;

-- dump
dump result;

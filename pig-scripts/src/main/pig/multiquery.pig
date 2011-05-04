A = load 'input/pig/multiquery/A';
B = filter A by $1 == 'banana';
C = filter A by $1 != 'banana';
D = filter A by $0 != 'Joe';

store B into 'output/multiqury/b';
store C into 'output/multiqury/c';
store D into 'output/multiqury/d';


/*-- Proc IML --*/

proc iml;
FF = FINV(0.05/32,2,29);
print FF;
quit;


/*-- Data and Proc Anova --*/

data copper;
input id warp temp pct;
datalines;
1    17   50  40
2    20   50  40
3    16   50  60
4    21   50  60
5    24   50  80
6    22   50  80
9    12   75  40
10    9   75  40
11   18   75  60
12   13   75  60
13   17   75  80
14   12   75  80
25   21  125  40
26   17  125  40
27   23  125  60
28   21  125  60
29   23  125  80
30   22  125  80
;

proc anova data=copper;
  class temp pct;
  model warp= temp | pct;
run;



/*-- Proc Print --*/

proc print data=race;
var pr;
run;

/*-- Data --*/

data race;
input df;
chirat = cinv(.995,df)/cinv(.005,df);
datalines;
20
21
22
23
24
25
26
27
28
29
30
;
run;

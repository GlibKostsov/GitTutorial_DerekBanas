/*-- Proc Data --*/
data race;
pr = probnorm(-15/sqrt(325));
run;



/*-- Proc GLM and Plot */

proc glm data=crack;
  class agef;
  model load = age agef / p;
  output out=crackreg p=pred r=resid;
run;
 
proc plot data=crackreg;
  plot load*age="*" pred*age="+"/ overlay;
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


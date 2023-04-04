/*  PART 1*/

proc univariate data=dataset;
 var length;
 run;
 
/* PART 2  */

proc glm data=dataset;
 class group;
 model length=group;
 run;
 
/* PART 3 */

proc glm data=dataset;
 class group;
 model length=group;
 run;
 
/*PART 4   */

proc corr data=dataset;
  var distance length;
run;

/*  PART 5*/

/* CODE FOR BROWN-LEVENE-FORSYTHE TEST */

proc glm data=dataset;
 class group;
 model length=group;
 run;

/* CODE FOR BARTLETT'S TEST */

proc npar1way data=dataset;
 class group;
 var length;
 run;

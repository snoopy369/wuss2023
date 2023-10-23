data class;
  set sashelp.class;
run;

data from_local_changes;
  set class;
  x=4;
run;

ods excel file="report.xlsx";
proc tabulate data=class;
  class age sex;
  tables age,sex;
run;
ods excel close;
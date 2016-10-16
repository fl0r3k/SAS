%macro LASR_DropTable(table);
	%if %sysfunc(exist(&table)) %then %do;
		proc imstat data=&table. noprint;
			droptable;
			run;
		quit;
	%end;
%mend LASR_DropTable;

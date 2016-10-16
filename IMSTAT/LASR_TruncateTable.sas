%macro LASR_TruncateTable(table);
    proc imstat noprint;
        table &table.;
        deleterows;
        deleterows / purge;
        run;
    quit;
%mend LASR_TruncateTable;

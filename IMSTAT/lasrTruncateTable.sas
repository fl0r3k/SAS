
%macro lasrTruncateTable(table);
    proc imstat noprint;
        table &table.;
        deleterows;
        deleterows / purge;
        run;
    quit;
%mend lasrTruncateTable;

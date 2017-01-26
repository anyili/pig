in = LOAD '$INFILE' USING AvroStorage();
out = FOREACH in GENERATE
                  col1 AS col1: tuple(col2: tuple(col1_data: chararray)),
                  col2;
RMF $OUTFILE;
STORE out INTO '$OUTFILE' USING AvroStorage();
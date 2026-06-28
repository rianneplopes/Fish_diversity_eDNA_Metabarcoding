RD_DIR=$(realpath "../1_data/1_raw")
MD_DIR="../2_metadata"
MANIFEST="${MD_DIR}/manifest.tsv"

printf "sample-id\tforward-absolute-filepath\treverse-absolute-filepath\n"

for RUN in DRR030421 DRR030422 DRR030423 DRR030424 \
           DRR030425 DRR030426 DRR030427 DRR030428
do
    printf "%s\t%s/%s_1.fastq.gz\t%s/%s_2.fastq.gz\n" \
        "$RUN" \
        "$RD_DIR" "$RUN" \
        "$RD_DIR" "$RUN" \
        >> "$MANIFEST"
done

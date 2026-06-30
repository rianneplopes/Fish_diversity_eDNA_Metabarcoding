export TZ="UTC"

qiime tools import \
    --type 'SampleData[PairedEndSequencesWithQuality]' \
    --input-path ../2_metadata/manifest.tsv \
    --output-path ../4_output/demux.qza \
    --input-format PairedEndFastqManifestPhred33V2
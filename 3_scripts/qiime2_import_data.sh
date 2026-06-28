qiime tools import \
    --type 'SampleData[PairedEndSequencesWithQuality]' \
    --input-path ../1_data/manifest.tsv \
    --output-path ../4_output/demux.qza \
    --input-format PairedEndFastqManifestPhred33V2
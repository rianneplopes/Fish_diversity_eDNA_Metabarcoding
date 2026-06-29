export TZ="UTC"

# Estatística do denoising
qiime metadata tabulate \
  --m-input-file ../4_output/denoising_stats.qza \
  --o-visualization ../4_output/denoising_stats.qzv

# Resumo da tabela de features (ASVs)
qiime feature-table summarize \
  --i-table    ../4_output/table.qza \
  --m-sample-metadata-file ../2_metadata/sample_metadata.tsv \
  --o-visualization ../4_output/table.qzv

# Tabela das sequências das ASVs
qiime feature-table tabulate-seqs \
  --i-data    ../4_output/rep_seqs.qza \
  --o-visualization ../4_output/rep_seqs.qzv
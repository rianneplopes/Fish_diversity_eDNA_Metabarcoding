export TZ="UTC"

qiime dada2 denoise-paired \
  --i-demultiplexed-seqs ../4_output/demux_trimmed.qza \
  --p-trim-left-f 0 \
  --p-trim-left-r 0 \
  --p-trunc-len-f 140 \
  --p-trunc-len-r 135 \
  --p-chimera-method consensus \
  --o-table ../4_output/table.qza \
  --o-representative-sequences ../4_output/rep_seqs.qza \
  --o-denoising-stats ../4_output/denoising_stats.qza \
  --p-n-threads 4
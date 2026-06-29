export TZ="UTC"

qiime demux subsample-paired \
  --i-sequences  ../4_output/demux.qza \
  --p-fraction   0.5 \
  --o-subsampled-sequences ../4_output/demux_subsample.qza
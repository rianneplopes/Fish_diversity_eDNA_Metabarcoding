export TZ="UTC"

qiime demux subsample-paired \
  --i-sequences  ../4_output/1_qiime_artifacts/demux.qza \
  --p-fraction   0.5 \
  --o-subsampled-sequences ../4_output/1_qiime_artifacts/demux_subsample.qza
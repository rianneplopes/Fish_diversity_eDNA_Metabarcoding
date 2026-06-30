export TZ="UTC"

qiime demux summarize \
    --i-data ../4_output/demux_trimmed.qza \
    --o-visualization ../4_output/demux_trimmed.qzv
export TZ="UTC"

qiime cutadapt trim-paired \
  --i-demultiplexed-sequences ../4_output/1_qiime_artifacts/demux_subsample.qza \
  --p-front-f GTCGGTAAAACTCGTGCCAGC \
  --p-front-r CATAGTGGGGTATCTAATCCCAGTTTG \
  --p-cores 4 \
  --p-match-read-wildcards \
  --o-trimmed-sequences ../4_output/1_qiime_artifacts/demux_trimmed.qza \
  --verbose


  # Primers MiFish-F e MiFish-R disponíveis em 10.1098/rsos.150088
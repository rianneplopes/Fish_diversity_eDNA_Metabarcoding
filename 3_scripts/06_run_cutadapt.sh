export TZ="UTC"

qiime cutadapt trim-paired \
  --i-demultiplexed-sequences ../4_output/demux_subsample.qza \
  --p-front-f GTCGGTAAAACTCGTGCCAGC \
  --p-front-r CATAGTGGGGTATCTAATCCCAGTTTG \
  --p-cores 4 \
  --p-match-read-wildcards \ # Aceita curingas
  --o-trimmed-sequences ../4_output/demux_trimmed.qza \
  --verbose


  # Primers MiFish-F e MiFish-R disponíveis em 10.1098/rsos.150088
# Configurar dir
DR_DIR="../1_data/1_raw/"
# Baixar dados
fasterq-dump DRR030428 -O ${DR_DIR} --progress
# Compactar dados para o QIIME2
pigz ${DR_DIR}DRR030428_1.fastq ${DR_DIR}DRR030428_2.fastq

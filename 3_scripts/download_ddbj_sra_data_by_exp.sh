# Definir diretório e variáveis
DR_DIR="../1_data/1_raw/"
BASE_URL="https://ddbj.nig.ac.jp/public/ddbj_database/dra/sra/ByExp/sra/DRX"
RUN="DRR030428"
EXP="DRX027444"
DRX="DRX027"

# Baixar dados
wget -c "${BASE_URL}/${DRX}/${EXP}/${RUN}/${RUN}.sra" \
     -P "$DR_DIR"

# Extrair arquivos fastq
fasterq-dump "${DR_DIR}${RUN}.sra" \
    -O "$DR_DIR" \
    --progress \
    --split-files

# Compactar arquivos para leitura do QIIME2
pigz "${DR_DIR}${RUN}"*.fastq

# Renomear arquivos .fastqz
if [ -f "${DR_DIR}${RUN}.sra_1.fastq.gz" ]; then
    mv "${DR_DIR}${RUN}.sra_1.fastq.gz" "${DR_DIR}${RUN}_1.fastq.gz"
    mv "${DR_DIR}${RUN}.sra_2.fastq.gz" "${DR_DIR}${RUN}_2.fastq.gz"
fi

# Remover .sra original
rm "${DR_DIR}${RUN}.sra"

# Mensagem
echo "Arquivos gerados com sucesso em ${DR_DIR}:"
ls -lh "$DR_DIR"
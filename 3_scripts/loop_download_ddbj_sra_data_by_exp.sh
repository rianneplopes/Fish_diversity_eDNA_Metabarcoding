# Definir diretório e variáveis
DR_DIR="../1_data/1_raw/"
BASE_URL="https://ddbj.nig.ac.jp/public/ddbj_database/dra/sra/ByExp/sra/DRX"
DRX="DRX027"

# Lista das duplas RUN:EXP que você encontrou para Bise
RUNS=(
  "DRR030428:DRX027444"
  "DRR030427:DRX027443"
  "DRR030426:DRX027442"
  "DRR030425:DRX027441"
)

for item in "${RUNS[@]}"; do
    RUN="${item%%:*}"
    EXP="${item##*:}"
    
    echo "Baixando amostra ${RUN}..."

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
done

# Mensagem
echo "Arquivos gerados com sucesso em ${DR_DIR}:"
ls -lh "$DR_DIR"
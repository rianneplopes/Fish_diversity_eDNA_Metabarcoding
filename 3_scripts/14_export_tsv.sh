OUTPUT_DIR="../4_output/2_exported_tables"
CORE_DIR="./1_qiime_artifacts/core_metrics_diversity"

mkdir "${OUTPUT_DIR}/1_alpha" "${OUTPUT_DIR}/2_beta" "${OUTPUT_DIR}/3_taxonomy"

echo "Exportando dados de diversidade alfa..."

qiime tools export \
    --input-path ${CORE_DIR}/observed_features_vector.qza \
    --output-path ${OUTPUT_DIR}/alpha/ \

qiime tools export \
    --input-path ${CORE_DIR}/shannon_vector.qza  \
    --output-path ${OUTPUT_DIR}/alpha/

echo "Exportando dados de diversidade beta (pcoa)..."

qiime tools export \
    --input-path ${CORE_DIR}/jaccard_pcoa_results.qza \
    --output-path ${OUTPUT_DIR}/beta/jaccard/

qiime tools export \
    --input-path ${CORE_DIR}/bray_curtis_pcoa_results.qza \
    --output-path ${OUTPUT_DIR}/beta/bray_curtis/

echo "Exportando classificação taxonômica..."

qiime tools export \
    --input-path ./1_qiime_artifacts/taxonomy.qza \
    --output-path ${OUTPUT_DIR}/taxonomy/

echo "Exportações concluídas."

OP_DIR="../4_output/1_qiime_artifacts"

export TZ="UTC"
qiime phylogeny align-to-tree-mafft-fasttree \
  --i-sequences ${OP_DIR}/rep_seqs.qza \
  --o-alignment ${OP_DIR}/aligned_rep_seqs.qza \
  --o-masked-alignment ${OP_DIR}/masked_aligned_rep_seqs.qza \
  --o-tree ${OP_DIR}/unrooted_tree.qza \
  --o-rooted-tree ${OP_DIR}/rooted_tree.qza \
  --p-n-threads 4

qiime diversity alpha-rarefaction \
  --i-table ${OP_DIR}/table.qza \
  --i-phylogeny ${OP_DIR}/rooted_tree.qza \
  --p-max-depth 500 \
  --m-metadata-file ..2/metadata/sample_metadata.tsv \
  --o-visualization ${OP_DIR}/alpha_rarefaction.qzv
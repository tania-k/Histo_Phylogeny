# Tania Kurbessoian - Daniel Matute Lab
# Histoplasma tree generation

library(readr)
library(treeio)
library(ggtree)

tree_AAB <- read.tree("/nas/longleaf/home/taniak/taniak/Tree_Construction_PHYling/Trial5.AA-Blast/combined_top50.partition.contree")
ggtree(tree_AAB) + geom_nodelab(size = 3, na.rm = TRUE, nudge_x = 0.008)

new_seq3 <- tree_AAB$tip.label
d = data.frame(new_seq3)
d$Species = 0
d$Species[grep("UAMH130", d$new_seq3)] = "Blastomyces parvus UAMH130"
d$Species[grep("19VMG-15", d$new_seq3)] = "Histoplasma capsulatum 19VMG15"
d$Species[grep("07_12-RJ", d$new_seq3)] = "Histoplasma capsulatum 07_12-RJ"
d$Species[grep("HISSP-11571-Belem1", d$new_seq3)] = "Histoplasma capsulatum HISSP-11571-Belem1"
d$Species[grep("HISSP-FGFER2036", d$new_seq3)] = "Histoplasma capsulatum HISSP-FGFER2036"
d$Species[grep("HISSP-CM6015", d$new_seq3)] = "Histoplasma capsulatum HISSP-CM6015"
d$Species[grep("HISSP-FGAMA2041", d$new_seq3)] = "Histoplasma capsulatum HISSP-FGAMA2041"
d$Species[grep("HISSP-FGLIN2055", d$new_seq3)] = "Histoplasma capsulatum HISSP-FGLIN2055"
d$Species[grep("HISSP-FGFAN2059", d$new_seq3)] = "Histoplasma capsulatum HISSP-FGFAN2059"
d$Species[grep("HISSP-FGPIA2052", d$new_seq3)] = "Histoplasma capsulatum HISSP-FGPIA2052"
d$Species[grep("HISSP-FGPIE2055", d$new_seq3)] = "Histoplasma capsulatum HISSP-FGPIE2055"
d$Species[grep("HISSP-FGBON2001", d$new_seq3)] = "Histoplasma capsulatum HISSP-FGBON2001"
d$Species[grep("HISSP-FGBIK2051", d$new_seq3)] = "Histoplasma capsulatum HISSP-FGBIK2051"
d$Species[grep("HISSP-FGJOS2044", d$new_seq3)] = "Histoplasma capsulatum HISSP-FGJOS2044"
d$Species[grep("JB_062632-Hc_062632", d$new_seq3)] = "Histoplasma capsulatum JB_062632-Hc_062632" 
d$Species[grep("NACVFR_Histo_HC1070058_2", d$new_seq3)] = "Histoplasma capsulatum NACVFR_Histo_HC1070058"
d$Species[grep("SECH_103", d$new_seq3)] = "Histoplasma suramericanum SECH_103_3_11G"
d$Species[grep("SECH_105", d$new_seq3)] = "Histoplasma suramericanum SECH_105_21_14"
d$Species[grep("HISSP-FGPERS2034", d$new_seq3)] = "Histoplasma capsulatum HISSP-FGPERS2034"
d$Species[grep("HISSP-B05821", d$new_seq3)] = "Histoplasma capsulatum HISSP-B05821"
d$Species[grep("JB_031837-Hc_031837", d$new_seq3)] = "Histoplasma capsulatum JB_031837-Hc_031837"
d$Species[grep("JB_042430-Hc_042430", d$new_seq3)] = "Histoplasma capsulatum JB_042430-Hc_042430"
d$Species[grep("JB_062775-Hc_062775", d$new_seq3)] = "Histoplasma capsulatum JB_062775-Hc_062775"
d$Species[grep("JB_083285_2-Hc_083285_2", d$new_seq3)] = "Histoplasma capsulatum JB_083285_2-Hc_083285_2"
d$Species[grep("CB053-2", d$new_seq3)] = "Histoplasma capsulatum CB053" 
d$Species[grep("CB055-2", d$new_seq3)] = "Histoplasma capsulatum CB055"
d$Species[grep("SECH_101", d$new_seq3)] = "Histoplasma capsulatum senso_stricto SECH_101_G184AR"
d$Species[grep("HISSP-CM6408", d$new_seq3)] = "Histoplasma capsulatum HISSP-CM6408"
d$Species[grep("HISSP-1014-Belem3", d$new_seq3)] = "Histoplasma capsulatum HISSP-1014-Belem3"
d$Species[grep("ES2_83Z", d$new_seq3)] = "Histoplasma capsulatum ES2_83Z"
d$Species[grep("ES2_90Z", d$new_seq3)] = "Histoplasma capsulatum ES2_90Z"
d$Species[grep("ES2_86Z", d$new_seq3)] = "Histoplasma capsulatum ES2_86Z"
d$Species[grep("ES2_88Z", d$new_seq3)] = "Histoplasma capsulatum ES2_88Z"
d$Species[grep("HCH143", d$new_seq3)] = "Histoplasma capsulatum HCH143"
d$Species[grep("SECH_107", d$new_seq3)] = "Histoplasma capsulatum SECH_107-duboisii-B-H88" 
d$Species[grep("ES2_85Z", d$new_seq3)] = "Histoplasma capsulatum ES2_85Z"
d$Species[grep("HISSP-CM7256", d$new_seq3)] = "Histoplasma capsulatum HISSP-CM7256"
d$Species[grep("ES2_89Z", d$new_seq3)] = "Histoplasma capsulatum ES2_89Z"
d$Species[grep("SA15", d$new_seq3)] = "Histoplasma capsulatum SA15"
d$Species[grep("SECH_98", d$new_seq3)] = "Histoplasma ohiense SECH_98-CI_30"
d$Species[grep("SECH_110", d$new_seq3)] = "Histoplasma capsulatum SECH_110"
d$Species[grep("G217B", d$new_seq3)] = "Histoplasma ohiense SECH_91-G217B"
d$Species[grep("SECH_92", d$new_seq3)] = "Histoplasma ohiense SECH_92-G222B"
d$Species[grep("Hc1986", d$new_seq3)] = "Histoplasma ohiense Hc1986"
d$Species[grep("SECH_82", d$new_seq3)] = "Histoplasma ohiense SECH_82-CI_4"
d$Species[grep("SECH_95", d$new_seq3)] = "Histoplasma ohiense SECH_95-CI_10"
d$Species[grep("SECH_94", d$new_seq3)] = "Histoplasma ohiense SECH_94-CI_9"
d$Species[grep("SECH_96", d$new_seq3)] = "Histoplasma ohiense SECH_96-CI_17"
d$Species[grep("SECH_93", d$new_seq3)] = "Histoplasma ohiense SECH_93-CI_6"
d$Species[grep("SECH_97", d$new_seq3)] = "Histoplasma ohiense SECH_97-CI_18"
d$Species[grep("SECH_99", d$new_seq3)] = "Histoplasma ohiense SECH_99-CI_35"
d$Species[grep("SECH_104", d$new_seq3)] = "Histoplasma suramericanum SECH_104_27_14" 
d$Species[grep("CB174-2", d$new_seq3)] = "Histoplasma capsulatum CB174"
d$Species[grep("SECH_109", d$new_seq3)] = "Histoplasma capsulatum SECH_109"
d$Species[grep("CB062-2", d$new_seq3)] = "Histoplasma capsulatum CB062"
d$Species[grep("CB065-2", d$new_seq3)] = "Histoplasma capsulatum CB065"
d$Species[grep("CB192-2", d$new_seq3)] = "Histoplasma capsulatum CB192"
d$Species[grep("CB064-2", d$new_seq3)] = "Histoplasma capsulatum CB064"
d$Species[grep("CB180-2", d$new_seq3)] = "Histoplasma capsulatum CB180"
d$Species[grep("CB063-2", d$new_seq3)] = "Histoplasma capsulatum CB063"
d$Species[grep("CB186-2", d$new_seq3)] = "Histoplasma capsulatum CB186" 
d$Species[grep("SECH_81", d$new_seq3)] = "Histoplasma mississippiense SECH_81-WU24"
d$Species[grep("CB066-2", d$new_seq3)] = "Histoplasma capsulatum CB066"
d$Species[grep("SECH_88", d$new_seq3)] = "Histoplasma mississippiense SECH_88-CI_43"
d$Species[grep("SECH_86", d$new_seq3)] = "Histoplasma mississippiense SECH_86-CI_24"
d$Species[grep("CB168-2", d$new_seq3)] = "Histoplasma capsulatum CB168"
d$Species[grep("SECH_85", d$new_seq3)] = "Histoplasma mississippiense SECH_85-CI_22"
d$Species[grep("SECH_83", d$new_seq3)] = "Histoplasma mississippiense SECH_83-CI_7" 
d$Species[grep("SECH_87", d$new_seq3)] = "Histoplasma mississippiense SECH_87-CI_42"
d$Species[grep("SECH_90", d$new_seq3)] = "Histoplasma mississippiense SECH_90-DOWNS"
d$Species[grep("SECH_102", d$new_seq3)] = "Histoplasma mississippiense SECH_102-505"
d$Species[grep("SECH_100", d$new_seq3)] = "Histoplasma capsulatum SECH_100-G186AR"
d$Species[grep("SECH_84", d$new_seq3)] = "Histoplasma mississippiense SECH_84-CI_19"
d$Species[grep("SECH_89", d$new_seq3)] = "Histoplasma mississippiense SECH_89-UCLA-531"
d$Species[grep("JB_01752-Hc_01752", d$new_seq3)] = "Histoplasma capsulatum JB_01752-Hc_01752"
d$Species[grep("104_p_06", d$new_seq3)] = "Histoplasma capsulatum 104_p_06"
d$Species[grep("1517_p_17", d$new_seq3)] = "Histoplasma capsulatum 1517_p_17"
d$Species[grep("117_p_12", d$new_seq3)] = "Histoplasma capsulatum 117_p_12"
d$Species[grep("388_p_11", d$new_seq3)] = "Histoplasma capsulatum 388_p_11" 
d$Species[grep("144_p_08", d$new_seq3)] = "Histoplasma capsulatum 144_p_08"
d$Species[grep("327_P_12", d$new_seq3)] = "Histoplasma capsulatum 327_P_12"
d$Species[grep("316_p_10", d$new_seq3)] = "Histoplasma capsulatum 316_p_10"
d$Species[grep("Dr_Anuradha_Fungal_WGS_S14", d$new_seq3)] = "Histoplasma capsulatum WGS_S14"
d$Species[grep("Histo-485P20", d$new_seq3)] = "Histoplasma capsulatum Histo-485P20"
d$Species[grep("136_P_07", d$new_seq3)] = "Histoplasma capsulatum 136_P_07"
d$Species[grep("343_p_18", d$new_seq3)] = "Histoplasma capsulatum 343_p_18"
d$Species[grep("Dr_Anuradha_Fungal_WGS_S11", d$new_seq3)] = "Histoplasma capsulatum WGS_S11"
d$Species[grep("Dr_Anuradha_Fungal_WGS_S16", d$new_seq3)] = "Histoplasma capsulatum WGS_S16"
d$Species[grep("122_p_10_B", d$new_seq3)] = "Histoplasma capsulatum 122_p_10_B"
d$Species[grep("256_P_18", d$new_seq3)] = "Histoplasma capsulatum 256_P_18" 
d$Species[grep("JB_021091-Hc_021091", d$new_seq3)] = "Histoplasma capsulatum JB_021091-Hc_021091"
d$Species[grep("JB_073129-Hc_073129", d$new_seq3)] = "Histoplasma capsulatum JB_073129-Hc_073129"
d$Species[grep("HISSP-FGFAR0189", d$new_seq3)] = "Histoplasma capsulatum HISSP-FGFAR0189"
d$Species[grep("HISSP-FGFIN2028", d$new_seq3)] = "Histoplasma capsulatum HISSP-FGFIN2028"
d$Species[grep("HISSP-FGPSO2043", d$new_seq3)] = "Histoplasma capsulatum HISSP-FGPSO2043"
d$Species[grep("HISSP-FGMAR2044", d$new_seq3)] = "Histoplasma capsulatum HISSP-FGMAR2044"
d$Species[grep("HISSP-FGTRO0285", d$new_seq3)] = "Histoplasma capsulatum HISSP-FGTRO0285"
tree_AAB$tip.label <- d$Species

p_AAB <- ggtree(tree_AAB, layout = "rectangular") + geom_tiplab(size = 3, fontface = 3, offset = 0.09) +
  theme_tree2() + theme(legend.position = "none") 
p_AAB
p_AAB1 <- p_AAB + geom_nodelab(size = 3, na.rm = TRUE, nudge_x = 0.05) + geom_cladelabel(node=140, label="NAm1", color="red", offset = 1.5) +
  geom_cladelabel(node=160, label="NAm2", color="#808000", offset = 1.5) + geom_cladelabel(node=172, label="India", color="blue", offset = 1.5) + geom_cladelabel(node=113, label="Africa", color="#FFA500", offset = 1.5) +
  geom_cladelabel(node=105, label="LAmA 1", color="purple", offset = 1.5) + geom_cladelabel(node=121, label="LAmA 2", color="purple", offset = 1.5) + geom_cladelabel(node=187, label="LAmA O", color="purple", offset = 1.5) +
  geom_cladelabel(node=190, label="Africa O", color="#FFA500", offset = 1.5) + geom_cladelabel(node=136, label="LAmA 3", color="purple", offset = 1.5) + geom_cladelabel(node=1, label="Root", color="green", offset = 1)
p_AAB1

pdf(file='/nas/longleaf/home/taniak/taniak/Tree_Construction_PHYling/Trial5.AA-Blast/Histo_Phylo1.tree.pdf', width=14, height=18)
p_AAB1

dev.off()
png(file='/nas/longleaf/home/taniak/taniak/Tree_Construction_PHYling/Trial5.AA-Blast/Histo_Phylo1.tree.png', width=1700, height=1500, res=100)
p_AAB1
dev.off()

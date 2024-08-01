# Histoplasma Phylogenetic Tree pipeline
## How to run the phylogenetic tree generated for this publication.

1. Build the proper environment to run the analysis. You might need separate environments if all are not compatable with each other.
   The main program used here is:
   * phyling - https://github.com/stajichlab/PHYling this program has undergone a lot of new changes in the past year (stay tuned for the pub!)
   * IQtree 2 version 2.2.2.7 or higher (this is the main program we used to generate our tree)
   * phykit - https://github.com/JLSteenwyk/PhyKIT awesome tool for overall tree manipulation
   * modeltest-ng - https://github.com/ddarriba/modeltest this will be helpful with partition testing

It would be best to familiarize yourself with PHYling and it's complex set up and tools. 
   *PHYling uses BUSCO to build a concatenated gene tree. For our dataset we used the eurotiomycetes_odb10 (so on 3546 genes) 
      *01_phyling.sh
      *02_phyling_tree.sh
   *Then to run a concatenated IQtree to build a base phylogenetic tree do:
      *03_iqtree.sh
   *But if you want to build individual BUSCO gene trees to then combine do:
      *04_make_tree.sh
   *Next run phykit to calculate Treeness, RCV and Treeness/RCV ratio as a scoring system to pick the top 50 BUSCO gene trees that will provide with the highest quality gene trees to build our one phylogenetic tree. The output will be a tsv file depicting all 3546 genes ranked based on Treeness/RCV ratio, Treeness and RCV.
      *05_toverr_and_combine.sh
   *Next will require some working with the documents. First to sort your tsv output by the second column (Treeness/RCV). Then capture the first 50 lines to a new text. Use the very short script I wrote by feeding the script with the updated 50 line tsv file which then copies over the phyling generated BUSCO alignment files to a new folder.
      *aux.move_files.sh - do `bash aux.move_files.sh FILE.50.BUSCO.tsv`
   *Next create a basic partitioning file (use example found in this github)




To make your tree ultrametric use ETE3 toolkit - https://github.com/etetoolkit/ete

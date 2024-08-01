# Histoplasma Phylogenetic Tree pipeline
## How to run the phylogenetic tree generated for this publication.

1. Build the proper environment to run the analysis. You might need separate environments if all are not compatable with each other.
   The main program used here is:
   * phyling - https://github.com/stajichlab/PHYling this program has undergone a lot of new changes in the past year (stay tuned for the pub!)
   * IQtree 2 version 2.2.2.7 or higher (this is the main program we used to generate our tree)
   * phykit - https://github.com/JLSteenwyk/PhyKIT awesome tool for overall tree manipulation
   * modeltest-ng - https://github.com/ddarriba/modeltest this will be helpful with partition testing

It would be best to familiarize yourself with PHYling and it's complex set up and tools. 
   * PHYling uses BUSCO to build a concatenated gene tree. For our dataset we used the eurotiomycetes_odb10 (so on 3546 genes) 
      * 01_phyling.sh\n
      * 02_phyling_tree.sh
   * Then to run a concatenated IQtree to build a base phylogenetic tree do:
      * 03_iqtree.sh
   * But if you want to build individual BUSCO gene trees to then combine do:
      * 04_make_tree.sh
   * Next run phykit to calculate Treeness, RCV and Treeness/RCV ratio as a scoring system to pick the top 50 BUSCO gene trees that will provide with the highest quality gene trees to build our one phylogenetic tree. The output will be a tsv file depicting all 3546 genes ranked based on Treeness/RCV ratio, Treeness and RCV.
      * 05_toverr_and_combine.sh
   * Next will require some working with the documents. First to sort your tsv output by the second column (Treeness/RCV). Then capture the first 50 lines to a new text. Use the very short script I wrote by feeding the script with the updated 50 line tsv file which then copies over the phyling generated BUSCO alignment files to a new folder.
      * aux.move_files.sh - do `bash aux.move_files.sh FILE.50.BUSCO.tsv`
   * Next create a basic partitioning file (use example found in this github) which takes the length of each BUSCO alignment into consideration. Then run the next aux script.
     * aux.combine_AA.sh
   * The last step should generate you a Top50.mfa alignment file that combines the alignment of all the top 50 BUSCO alignment genes.
	Take this alignment file, along with the partitioning file you generated to run the next step. Here you will be creating a modeltest output file `combined_top50.modeltest.out` that will indicate to you the best partitioning model to use for your phylogentic tree based on BIC, AIC, and AICc. Choose the value that works for you.
     * 06_modeltest.sh
   * Once generated read the modeltest output file read the result, I chose the AIC partitioning model `JTT-DCMUT+I+G4`, you can do a quick regex into your already formed partitioning txt to replace with these values (see example combined_top50.partition file) and run the next step which is re-running your IQTree. 
     * 07_iqtree.sh

To make your tree ultrametric use ETE3 toolkit - https://github.com/etetoolkit/ete


#!/bin/bash
# BEGIN SGE OPTIONS DECLARATIONS
# Export all environment variables
#$ -V
#
#$ -v TMPDIR=/data
# Your job name
#$ -N iqtree_run6
#
# Shell Environment
#$ -S /bin/bash
#
# Use current working directory
#$ -cwd
#
# Set memory to request (mem_free) and the memory limit at which the job will be killed (h_vmem)
#$ -l mem_free=200G
#$ -l h_vmem=200G
#
#Output files for stdout and stderr
#$ -o iqtree_run6
#$ -e iqtree_run6
#
# Ask for this many slots for multi-threaded jobs:
#$ -pe thread 16
#
# END SGE OPTIONS DECLARATIONS
#
PATH=/local/cluster/sge/bin/lx-amd64:/local/cluster/sge/bin:/local/cluster/sge/bin/lx-amd64:/home/zoo/kochja/scripts:/home/zoo/kochja/bin:/local/cluster/jdk1.8.0_71/jre/bin:/bin:/usr/bin:/local/cluster/ncbi-blast+/bin:/local/cluster/bin:/usr/local/bin:/local/cluster/mpich/bin:/usr/local/share/ncbi/bin:/local/cluster/hdf5-1.8.12/bin:/local/cluster/genome/bin:/local/cluster/RECON/bin:/local/cluster/RECON/scripts:/local/cluster/MUMmer:/local/cluster/amos/bin:/local/cluster/velvet/velvet:/local/cluster/oases:/local/cluster/mira/bin:/local/cluster/abyss/bin:/local/cluster/cutadapt/bin:/local/cluster/edena2.1.1_linux64:/local/cluster/MAKER/bin:/local/cluster/mcl/bin:/local/cluster/YASRA/bin:/local/cluster/miRanda/bin:/local/cluster/ea-utils/bin:/local/cluster/RAxML/bin:/local/cluster/MOSAIK/bin:/local/cluster/hmmer/bin:/local/cluster/meme/bin:/local/cluster/tmhmm/bin:/local/cluster/wgs/Linux-amd64/bin:/local/cluster/amber16/bin:/local/cluster/mpich2-1.2.1p1/bin:/usr/lib64/lam/bin:/local/cluster/mockler/bin:/local/cluster/carrington/bin:/local/cluster/variscan-2.0.3/bin/Linux-i386:/local/cluster/Roche/454/bin:/local/cluster/shore:/local/cluster/SHOREmap:/local/cluster/BEAST/bin:/local/cluster/BEDTools/bin:/local/cluster/genomemapper:/local/cluster/iprscan/bin:/local/cluster/trinityrnaseq:/local/cluster/Cerulean/bin:/local/cluster/Quake/bin:/local/cluster/glimmer/bin:/local/cluster/samtools/bin:/local/cluster/SPAdes/bin:/local/cluster/RAPSearch2.16_64bits/bin:/local/cluster/last-418/bin:/local/cluster/rnammer:/local/cluster/SHRiMP/bin:/local/cluster/homer/bin:/local/cluster/cd-hit:/local/cluster/augustus/bin:/local/cluster/structure_linux_console/bin:/local/cluster/stampy:/local/cluster/infernal/binaries:/local/cluster/rtax:/local/cluster/pandaseq/bin:/local/cluster/bedtools2/bin:/local/cluster/htsjdk/dist:/local/cluster/GARM:/local/cluster/AmpliconNoise/ampliconnoise/Scripts:/local/cluster/AmpliconNoise/ampliconnoise:/local/cluster/pplacer-v1.1:/local/cluster/microbiomeutil/WigeoN:/local/cluster/microbiomeutil/TreeChopper:/local/cluster/microbiomeutil/NAST-iEr:/local/cluster/microbiomeutil/ChimeraSlayer:/local/cluster/AmosCmp16Spipeline:/local/cluster/Tisean_3.0.0/bin:/local/cluster/allpathslg/bin:/local/cluster/NAMD:/local/cluster/vcf/bin:/local/cluster/iRODS/clients/icommands/bin:/local/cluster/SVMerge/bin:/local/cluster/pindel/bin:/local/cluster/breakdancer-1.1.2/bin:/local/cluster/cnD/bin:/local/cluster/nextclip/bin:/local/cluster/prokka/bin:/local/cluster/CEGMA_v2.5/bin:/local/cluster/julia-0.3.3/bin:/local/cluster/jnet/bin:/local/cluster/mongodb/bin:/local/cluster/gsl/bin/:/local/cluster/sratoolkit/bin:/local/cluster/wise2.2.3-rc7/src/bin:/local/cluster/CEGMA_v2.5/bin:/local/cluster/freebayes/bin:/local/cluster/stacks/bin:/local/cluster/PhyloTreePruner:/local/cluster/barrnap-0.6/bin:/local/cluster/glpk/bin:/local/cluster/metaphlan/bin:/local/cluster/SOAPdenovo-Trans/bin:/local/cluster/ruby/bin:/local/cluster/fastqc:/local/cluster/PBSuite_15.8.24/bin:/local/cluster/detonate-1.10/bin:/local/cluster/canu/Linux-amd64/bin:/local/cluster/Blast2GO/bin:/local/cluster/JAGS-4.2.0/bin:/local/cluster/capnproto-c++/bin:/local/cluster/ucsc_genome:/local/cluster/vcflib/bin:/local/cluster/tre/bin:/local/cluster/MaSuRCA/bin:/local/cluster/BUSCO/bin:/local/cluster/BUSCO_v3.02/bin:/local/cluster/bib/active/bin:/local/cluster/Platypus/bin:/local/cluster/rMATS/bin:/local/cluster/sox/bin:/local/cluster/hisat2/bin:/local/cluster/bbmap:/local/cluster/mirdeep2/bin:/local/cluster/miniconda2/bin:/local/cluster/groff-1.22.3/bin:/local/cluster/EPACTS/bin:/local/cluster/percolator/bin:/local/cluster/mafft/bin:/local/cluster/gmap/bin:/local/cluster/MATLAB/R2018a/bin:/usr/X11R6/bin:/usr/X/bin:./:/local/cluster/dowser/bin:/local/cluster/dowser/bin/linux:/home/zoo/kochja/scripts/kmergenie-1.7016
export PATH
#
#
#The following auto-generated commands will be run by the execution node.
#We execute your command via /usr/bin/time with a custom format
#so that the memory usage and other stats can be tracked; note that
#GNU time v1.7 has a bug in that it reports 4X too much memory usage
echo "  Started on:           " `/bin/hostname -s` 
echo "  Started at:           " `/bin/date` 
/usr/bin/time -f " \\tFull Command:                      %C \\n\\tMemory (kb):                       %M \\n\\t# SWAP  (freq):                    %W \\n\\t# Waits (freq):                    %w \\n\\tCPU (percent):                     %P \\n\\tTime (seconds):                    %e \\n\\tTime (hh:mm:ss.ms):                %E \\n\\tSystem CPU Time (seconds):         %S \\n\\tUser   CPU Time (seconds):         %U " \
/nfs0/IB/Weis_Lab/kochja/happy_bin/iqtree-1.6.10-Linux/bin/iqtree -s namedCA_Manuscript_excludeRogues.phy -b 1000 -nt AUTO -ntmax 16 -mem 200G
echo "  Finished at:           " `date` 

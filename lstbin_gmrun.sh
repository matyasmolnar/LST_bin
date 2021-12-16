#!/bin/sh

# Set SBATCH Directives
# Lines starting with "#SBATCH", before any shell commands are
# interpreted as command line arguments to sbatch.
# Don't put any commands before the #SBATCH directives or they will not work.
#
#SBATCH --export=ALL                                  # Export all environment variables to job
#SBATCH --partition=hera                              # Specify partition on which to run job
#SBATCH --mem=250G                                    # Amount of memory needed by the whole job
#SBATCH -D /lustre/aoc/projects/hera/mmolnar/LST_bin  # Working directory
#SBATCH --mail-type=BEGIN,END,FAIL                    # Send email on begin, end, and fail of job
#SBATCH --nodes=1                                     # Request 1 node
#SBATCH --ntasks-per-node=8                           # Request 8 cores
#SBATCH --time=100:00:00                              # Request 100 hours, 0 minutes and 0 seconds.
#SBATCH --output=lstbin_gmrun.out

source ~/.bashrc
conda activate lst_bin
date
cd /lustre/aoc/projects/hera/mmolnar/LST_bin
/lustre/aoc/projects/hera/mmolnar/LST_bin/task_scripts/do_LSTBIN.sh False 4 5 True 60 0.0 True 0.001565970008 Jy 15 grp1.of1.{type}.{time:7.5f}.HH.OCRSLH.uvh5 /lustre/aoc/projects/hera/mmolnar/LST_bin/binned_files/geo_med 150 smooth_abs.calfits '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458098/zen.2458098.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458099/zen.2458099.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458101/zen.2458101.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458102/zen.2458102.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458103/zen.2458103.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458104/zen.2458104.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458105/zen.2458105.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458106/zen.2458106.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458107/zen.2458107.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458108/zen.2458108.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458109/zen.2458109.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458110/zen.2458110.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458111/zen.2458111.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458112/zen.2458112.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458113/zen.2458113.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458114/zen.2458114.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458115/zen.2458115.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458116/zen.2458116.*.HH.uvh5"'
if [ $? -eq 0 ]; then
  cd /lustre/aoc/projects/hera/mmolnar/LST_bin
  touch lstbin_gmrun.out
fi
date
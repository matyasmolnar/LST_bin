#!/bin/zsh
source ~/.zshrc
conda activate xd_flags
date
cd /lustre/aoc/projects/hera/mmolnar/LST_bin
timeout 48h /lustre/aoc/projects/hera/mmolnar/LST_bin/task_scripts/do_LSTBIN.sh True 4 5 True 60 0.0 True 0.001565970008 Jy 0 test.grp1.of1.{type}.{time:7.5f}.HH.OCRSL.uvh5 /lustre/aoc/projects/hera/mmolnar/LST_bin/binned_files 150 smooth_abs.calfits '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458098/zen.2458098.*.HH.uvh5"' '"/lustre/aoc/projects/hera/H1C_IDR2/IDR2_2/2458099/zen.2458099.*.HH.uvh5"'
if [ $? -eq 0 ]; then
  cd /lustre/aoc/projects/hera/mmolnar/LST_bin
  touch lstbin_outfile_0.LSTBIN.out
fi
date
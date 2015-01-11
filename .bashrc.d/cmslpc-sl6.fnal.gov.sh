# Environment for CMS LPC at Fermilab
echo $HOSTNAME|grep -q '.fnal.gov' || return

# For scram
. /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=slc6_amd64_gcc481

# For tmux install
export PATH=~/local/bin:$PATH

# Shortcuts
export cmsdas=/uscms/home/ncsmith/nobackup/cmsdas/CMSSW_7_3_0_pre1/src

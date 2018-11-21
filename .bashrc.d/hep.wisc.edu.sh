# Environment for login[02..06].hep.wisc.edu machines
echo $HOSTNAME|grep -q '.hep.wisc.edu' || return

if [ -f /etc/bashrc ]; then
   . /etc/bashrc
fi

if [ -f /afs/hep.wisc.edu/cms/setup/bashrc ]; then
   . /afs/hep.wisc.edu/cms/setup/bashrc
fi

if touch a 2>/dev/null; then
  rm a
else
  echo "AFS Credentials expired; running kinit && aklog"
  kinit -l 30d uhussain@HEP.WISC.EDU && aklog
fi

export PATH=~/opt/texlive/bin/x86_64-linux:$PATH

if echo $HOSTNAME|grep -q 'login02'; then
  # SLC5 machine
  echo "Setting up SLC5 tweaks"
  declare -x SCRAM_ARCH="slc5_amd64_gcc462"
  export PATH=~/slc5/bin:$PATH
  export LD_LIBRARY_PATH=~/slc5/lib:$LD_LIBRARY_PATH
  export CPLUS_INCLUDE_PATH=~/slc5/include
  export TERM=screen
else
  export PATH=/cms/sw/git/bin:$PATH
  export LD_LIBRARY_PATH=~/lib:$LD_LIBRARY_PATH
  export CPLUS_INCLUDE_PATH=~/include
fi

# Make git stop searching before hitting /afs networked directory
export GIT_CEILING_DIRECTORIES=/afs/hep.wisc.edu

# Aliases
alias procrastinate="watch -n 30 'condor_q uhussain | tail -n 40'"

# Shortcuts
export egrates=/afs/hep.wisc.edu/cms/nsmith/CMSSW_6_2_0_SLHC12_patch1/src/SLHCUpgradeSimulations/L1EGRateStudies/
export l1t=/afs/hep.wisc.edu/cms/nsmith/CMSSW_7_4_0_pre6/src/
export cmshome=/afs/hep.wisc.edu/cms/nsmith/
export fsa=/afs/hep.wisc.edu/cms/nsmith/FSA_CMSSW_5_3_14/src/FinalStateAnalysis/
export zhinv=/afs/hep.wisc.edu/cms/nsmith/ZHinv/

# Modern root
newRoot() {
  pushd $cmshome/CMSSW_7_5_0_pre3_ROOT5
  cmsenv
  popd
  rebash
}

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
  kinit -l 30d nsmith@HEP.WISC.EDU && aklog
fi

export PATH=~/opt/texlive/bin/x86_64-linux:$PATH

if echo $HOSTNAME|grep -q 'login0[24]'; then
  # SLC5 machine
  echo "Setting up SLC5 tweaks"
  declare -x SCRAM_ARCH="slc5_amd64_gcc462"
  export PATH=~/slc5/bin:$PATH
  export LD_LIBRARY_PATH=~/slc5/lib
  export CPLUS_INCLUDE_PATH=~/slc5/include
else
  export PATH=/cms/sw/git/bin:$PATH
  export LD_LIBRARY_PATH=~/lib:$LD_LIBRARY_PATH
  export CPLUS_INCLUDE_PATH=~/include
fi

# Aliases
alias rebash="pushd ~ && . .bashrc && popd"
alias procrastinate="watch -n 30 'condor_q nsmith | tail -n 50'"

# Shortcuts
export cordic=/afs/hep.wisc.edu/cms/nsmith/CMSSW_7_3_0_pre1/src/L1Trigger/L1TCalorimeter/cordic_test
export egrates=/afs/hep.wisc.edu/cms/nsmith/CMSSW_6_2_0_SLHC12_patch1/src/SLHCUpgradeSimulations/L1EGRateStudies/
export l1t=/afs/hep.wisc.edu/cms/nsmith/CMSSW_7_3_0_pre1/src/
export cmshome=/afs/hep.wisc.edu/cms/nsmith/

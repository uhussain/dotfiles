# Environment for uwlogin.cern.ch
echo $HOSTNAME|grep -q 'uwlogin.cern.ch' || return

if [ -f /etc/bashrc ]; then
   . /etc/bashrc
fi

if [ -f /cms/setup/bashrc ]; then
    . /cms/setup/bashrc
fi

if touch a 2>/dev/null; then
  rm a
else
  echo "AFS Credentials expired; running kinit && aklog"
  kinit -l 30d ncsmith@CERN.CH && aklog
fi

export PATH=~/opt/texlive/bin/x86_64-linux:$PATH
export PATH=/cms/sw/git/bin:$PATH
export LD_LIBRARY_PATH=~/lib:$LD_LIBRARY_PATH
export CPLUS_INCLUDE_PATH=~/include

source /afs/cern.ch/project/eos/installation/cms/etc/setup.sh

# Make git stop searching before hitting /afs networked directory
export GIT_CEILING_DIRECTORIES=/afs/cern.ch/

# Aliases
alias procrastinate="watch -n 30 'condor_q nsmith | tail -n 40'"
alias brilcalc="PATH=$HOME/.local/bin:/afs/cern.ch/cms/lumi/brilconda-1.0.3/bin:$PATH brilcalc"

# Shortcuts
#export egrates=/afs/hep.wisc.edu/cms/nsmith/CMSSW_6_2_0_SLHC12_patch1/src/SLHCUpgradeSimulations/L1EGRateStudies/
#export l1t=/afs/hep.wisc.edu/cms/nsmith/CMSSW_7_4_0_pre6/src/
#export cmshome=/afs/hep.wisc.edu/cms/nsmith/
#export fsa=/afs/hep.wisc.edu/cms/nsmith/FSA_CMSSW_5_3_14/src/FinalStateAnalysis/
#export zhinv=/afs/hep.wisc.edu/cms/nsmith/CMSSW_5_3_14_patch2/src/ZHinvAnalysis/

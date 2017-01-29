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
alias justgivememydamnlumi="PATH=$HOME/.local/bin:/afs/cern.ch/cms/lumi/brilconda-1.0.3/bin:$PATH brilcalc lumi -b \"STABLE BEAMS\" --normtag=/afs/cern.ch/user/l/lumipro/public/normtag_file/normtag_DATACERT.json -u /fb -i"

# Shortcuts
export work=/afs/cern.ch/work/n/ncsmith/

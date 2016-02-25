# Environment for *.cms
echo $HOSTNAME|grep -q '.cms' || return

if [ -f /etc/bashrc ]; then
   . /etc/bashrc
fi

case $HOSTNAME in (fu-*|bu-*)
    source /opt/offline/cmsset_default.sh
    export SCRAM_ARCH=slc6_amd64_gcc491
    export http_proxy=http://cmsproxy.cms:3128
    export https_proxy=https://cmsproxy.cms:3128
    export NO_PROXY=".cms"
    ;;
esac

# Shortcuts
#export egrates=/afs/hep.wisc.edu/cms/nsmith/CMSSW_6_2_0_SLHC12_patch1/src/SLHCUpgradeSimulations/L1EGRateStudies/
#export l1t=/afs/hep.wisc.edu/cms/nsmith/CMSSW_7_4_0_pre6/src/
#export cmshome=/afs/hep.wisc.edu/cms/nsmith/
#export fsa=/afs/hep.wisc.edu/cms/nsmith/FSA_CMSSW_5_3_14/src/FinalStateAnalysis/
#export zhinv=/afs/hep.wisc.edu/cms/nsmith/CMSSW_5_3_14_patch2/src/ZHinvAnalysis/

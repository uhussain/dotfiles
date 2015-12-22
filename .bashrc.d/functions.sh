# Common functions

# Merge pdfs together using ghostscript
pdfmerge()
{
  if which gs >/dev/null; then
    outfile=$1
    shift
    gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=${outfile} $@
  else
    echo 'pdfmerge needs ghostscript'
  fi
}

# Shell function to set X display (after .bash_profile sets up the appropriate address)
setupX()
{
  export DISPLAY=$(cat ~/.Xdisplay)
}

# --resubmit-failed-jobs + --match-input-files workaround
resubmitFarmout()
{
  scratchDir=$1

  for f in $(grep -l -r "JobExitCode': '0" --include=report.log $scratchDir); do
    cp $scratchDir/submit $scratchDir/submit.1
    sed -i "\#.*${f%/*}#,+7d" submit.1
  done
  echo condor_submit $scratchDir/submit.1
}

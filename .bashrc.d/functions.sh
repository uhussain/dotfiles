# Common functions

# Merge pdfs together using ghostscript
pdfmerge()
{
  if which gs >/dev/null; then
    outfile=$1
    shift
    echo gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=${outfile} $@
  else
    echo 'pdfmerge needs ghostscript'
  fi
}

# Shell function to set X display (after .bash_profile sets up the appropriate address)
setupX()
{
  export DISPLAY=$(cat ~/.Xdisplay)
}


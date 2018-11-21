export PATH=~/bin:$PATH

for script in ~/.bashrc.d/*; do
    [ -x $script ] || continue
      . $script
    done

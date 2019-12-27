function gds () {
  git diff --staged $@
}

function grbif () {
  EDITOR="vim -c 'silent 2,\$s/^pick/fixup/'" git rebase -i $@
}

function grbifr () {
  EDITOR="vim -c 'silent 2,\$s/^pick/fixup/' -c 'silent 1s/^pick/reword'" git rebase -i $@
}


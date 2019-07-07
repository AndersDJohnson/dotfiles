function gds () {
  git diff --staged
}

function grbif () {
  EDITOR="vim -c 'silent 2,\$s/pick/fixup/'" git rebase -i
}


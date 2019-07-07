function gds () {
  git diff --staged
}

function grbfi () {
  EDITOR="vim -c 'silent 2,\$s/pick/fixup/'"` git rebase -i
}



function gcnm () {
  gcmsg $@ -n
}

function gds () {
  git diff --staged $@
}

function grbif () {
  EDITOR="vim -c 'silent 2,\$s/^pick/fixup/'" git rebase -i $@
}

function grbifr () {
  EDITOR="vim -c 'silent 2,\$s/^pick/fixup/' -c 'silent 1s/^pick/reword'" git rebase -i $@
}

# Additional commands to complement the zsh git plugin aliases

function gls () {
  g ls-files $@
}

function gun () {
  gls --others --exclude-standard $@
}

function gdl () {
  gd HEAD\^ -- $@
}

function gdn () {
  gd --name-only $@
}

function gdsn () {
  gds --name-only $@
}

function gdm () {
  gd master $@
}

function gdsm () {
  gds master $@
}

function gdnm () {
  gdn master $@
}

function gdsnm () {
  gdsn master $@
}

function gbrl () {
  git for-each-ref --sort='-authordate' --format='%(objectname:short)%09%(authordate)%09%(refname:short)' refs/heads
}

function gbrll () {
  gbrl | less
}

function gmm () {
  gm master
}


function gcbm () {
  gcb $1 master
}

function gmom () {
  gm origin/master
}

function gfom () {
  gf origin/master
}

function gfmom () {
  gfom && gmom
}

function gcog () {
  gbrl | cut -f3 | grep -i "$1" | head -1 | xargs git checkout
}

function gw () {
  git commit -m "WIP [CI SKIP]" --no-verify
}

function gwp () {
  gw && gp -u
}

function gawp () {
  gaa && gwp
}

function glsu () {
  g ls-files --others --exclude-standard
}

function grs () {
  git reset $@
}


# List projects files
proj() { cd ~/projetos/$1; }
_proj() { _files -W ~/projetos -/; }
compdef _proj proj

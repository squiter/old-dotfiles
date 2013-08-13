# List Locaweb projects files
loca() { cd ~/projetos/locaweb/$1; }
_loca() { _files -W ~/projetos/locaweb -/; }
compdef _loca loca

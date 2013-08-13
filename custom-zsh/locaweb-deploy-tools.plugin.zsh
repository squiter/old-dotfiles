deploy_update() {
  curl "http://deploy.$1.hospedagem.systemintegration.locaweb.com.br/pkg/$1" -i -d "" -XPUT
}

deploy_restart() {
  curl "http://deploy.$1.hospedagem.systemintegration.locaweb.com.br/daemon/$1/restart" -i
}

deploy_show(){
  curl "http://deploy.$1.hospedagem.systemintegration.locaweb.com.br/pkg/$1" -i
}

deploy_syslog(){
  curl "http://deploy.$1.hospedagem.systemintegration.locaweb.com.br/logs/syslog" -i
}


compdef _loca deploy_update
compdef _loca deploy_restart
compdef _loca deploy_show
compdef _loca deploy_syslog

jujuloggingon(){
  juju model-config logging-config="<root>=WARNING;unit=TRACE"
  echo "juju logging set to <root>=WARNING;unit=TRACE"
}

jujuloggingoff(){
  juju model-config logging-config="<root>=INFO"
  echo "juju logging set to <root>=INFO"
}

setupworkenv(){
  sudo snap start juju
  sudo snap start microk8s
  echo "started juju and microk8s snaps"
}

teardownworkenv(){
  sudo snap stop juju
  sudo snap stop microk8s
  echo "stopped juju and microk8s snaps"
}

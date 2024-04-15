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
  sudo microk8s start
  sudo snap start lxd
  echo "started juju, lxd and microk8s snaps"
}

teardownworkenv(){
  sudo snap stop juju
  sudo microk8s stop
  sudo snap stop microk8s
  sudo snap stop lxd
  echo "stopped juju, lxd and microk8s snaps"
}

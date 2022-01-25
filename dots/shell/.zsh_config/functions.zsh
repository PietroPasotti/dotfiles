jujuloggingon(){
  juju model-config logging-config="<root>=WARNING;unit=TRACE"
  echo "juju logging set to <root>=WARNING;unit=TRACE"
}

jujuloggingoff(){
  juju model-config logging-config="<root>=INFO"
  echo "juju logging set to <root>=INFO"
}
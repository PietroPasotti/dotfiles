### cloud-tools

This is an Ansible role to install the following tools:

- kubectl
- helm
- istioctl
- cfssl
- cfssljson
- packer
- terraform
- terragrunt

By default, the tools are installed into `/usr/local/bin/`, with `/tmp` used as a staging directory for downloads/unarchiving.

Packages are preferred where they exist. Versions specified in variables are not honoured when installing with a package manager.

#### Variables

Defaults:

```yaml
---
tmp_dir: "/tmp"
install_dir: "/usr/local/bin"
architecture: "amd64"
os: "linux"
owner: root
group: root

kubectl_version: 1.18.6
kubectl_checksum: "sha256:62fcb9922164725c7cba5747562f2ad2f4d834ad0a458c1e4c794cc203dcdfb3"

helm_version: 3.2.4
helm_checksum: "sha256:https://get.helm.sh/helm-v{{ helm_version }}-{{ os }}-{{ architecture }}.tar.gz.sha256sum"

istioctl_version: 1.6.7
istioctl_checksum: "sha256:https://github.com/istio/istio/releases/download/{{ istioctl_version }}/istioctl-{{ istioctl_version }}-{{ os }}-{{ architecture }}.tar.gz.sha256"

cfssl_version: 1.4.1
cfssl_checksum: "sha256:d01a26bc88851aab4c986e820e7b3885cedf1316a9c26a98fbba83105cfd7b87"
cfssljson_checksum: "sha256:05d67e05cacb8b2e78e737637acdcf9127b0732f0c4104403e9e9b74032fd685"

terraform_version: 0.13.0
terraform_checksum: "sha256:9ed437560faf084c18716e289ea712c784a514bdd7f2796549c735d439dbe378"

packer_version: 1.6.1
packer_checksum: "sha256:8dcf97610e8c3907c23e25201dce20b498e1939e89878dec01de6975733c7729"

terragrunt_version: 0.23.33
terragrunt_checksum: "sha256:ce67c9d59af85a98046f22cf39d09b4f0e6fe9746334764bbb620bcbd71f75b7"
```
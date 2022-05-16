# Conversão de um script em BASH para ANSIBLE
#### Como é necessário um ambiente desktop definido, após a play é necessário logar no host e rodar o comando: dpkg-reconfigure lightdm

## Resultado

#### PLAY [ubuntu]
<hr>

#### TASK [Gathering Facts]

##### ok: [host_alvo]
<hr>

#### TASK [Instalar GNUPG]

##### ok: [host_alvo]
<hr>

#### TASK [Adicionar a chave APT]

##### changed: [host_alvo]
<hr>

#### TASK [Adicionar o repositório]

##### changed: [host_alvo]
<hr>

#### TASK [Instalar Pacotes Chrome, NodeJS, NPM, Curl, VIM, Wget, GIT, Unrar, Unzip, Xrdp, Dconf-editor, Alacarte, Snapd]

##### changed: [host_alvo] => (item=google-chrome-stable)

##### changed: [host_alvo] => (item=nodejs)

##### changed: [host_alvo] => (item=npm)

##### ok: [host_alvo] => (item=curl)

##### ok: [host_alvo] => (item=vim)

##### ok: [host_alvo] => (item=wget)

##### ok: [host_alvo] => (item=git)

##### changed: [host_alvo] => (item=unrar)

##### ok: [host_alvo] => (item=unzip)

##### changed: [host_alvo] => (item=xrdp)

##### changed: [host_alvo] => (item=dconf-editor)

##### changed: [host_alvo] => (item=alacarte)

##### ok: [host_alvo] => (item=snapd)
<hr>

#### TASK [Instalar XFCE4]

##### changed: [host_alvo]
<hr>

#### TASK [Iniciar SNAP]

##### ok: [host_alvo]
<hr>

#### TASK [Ativar SNAP]

##### ok: [host_alvo]
<hr>

#### TASK [Instalar ark]

##### changed: [host_alvo]
<hr>

#### TASK [Instalar luminati-io]

##### changed: [host_alvo]
<hr>

#### TASK [Instalar pm2]

##### changed: [host_alvo]
<hr>

#### TASK [Criação do Usuário]

##### changed: [host_alvo]
<hr>

#### TASK [Ajuste de criptografia (XRDP)]

##### changed: [host_alvo]
<hr>

#### TASK [Ajuste de BPP (XRDP)]

##### changed: [host_alvo]
<hr>

#### TASK [Ajuste startwm.sh 01 (XRDP)]

##### changed: [host_alvo]
<hr>

#### TASK [Ajuste startwm.sh 02 (XRDP)]

##### changed: [host_alvo]
<hr>

#### TASK [Inserir startxfce ao fim do arquivo /etc/xrdp/startwm.sh]

##### changed: [host_alvo]
<hr>

#### TASK [copy]

##### changed: [host_alvo]
<hr>

#### TASK [copy]

##### changed: [host_alvo]
<hr>

#### TASK [Habilitando o Ambiente Gráfico]

##### changed: [host_alvo]
<hr>

#### TASK [Daemon Reload]

##### ok: [host_alvo]
<hr>

#### TASK [Desativar AppArmor]

##### changed: [host_alvo]
<hr>

#### TASK [Desativar UFW]

##### changed: [host_alvo]
<hr>

#### TASK [Ativar XRDP]

##### ok: [host_alvo]
<hr>

#### TASK [Ativar Luminati]

##### changed: [host_alvo]
<hr>

#### PLAY RECAP

##### host_alvo                       : ok=25   changed=19   unreachable=0    failed=0    skipped=0    rescued=0    ignored=0

# Conversão de um script em BASH para ANSIBLE
## Resultado

#### PLAY [ubuntu]
<hr>

#### TASK [Gathering Facts]
<hr>

##### ok: [host_alvo]

#### TASK [Instalar GNUPG]
<hr>

##### ok: [host_alvo]

#### TASK [Adicionar a chave APT]
<hr>

##### changed: [host_alvo]

#### TASK [Adicionar o repositório]
<hr>

##### changed: [host_alvo]

#### TASK [Instalar Pacotes Chrome, NodeJS, NPM, Curl, VIM, Wget, GIT, Unrar, Unzip, Xrdp, Dconf-editor, Alacarte, Snapd]
<hr>

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

#### TASK [Instalar XFCE4]
<hr>

##### changed: [host_alvo]

#### TASK [Iniciar SNAP]
<hr>

##### ok: [host_alvo]

#### TASK [Ativar SNAP]
<hr>

##### ok: [host_alvo]

#### TASK [Instalar ark]
<hr>

##### changed: [host_alvo]

#### TASK [Instalar luminati-io]
<hr>

##### changed: [host_alvo]

#### TASK [Instalar pm2]
<hr>

##### changed: [host_alvo]

#### TASK [Criação do Usuário]
<hr>

##### changed: [host_alvo]

#### TASK [Ajuste de criptografia (XRDP)]
<hr>

##### changed: [host_alvo]

#### TASK [Ajuste de BPP (XRDP)]
<hr>

##### changed: [host_alvo]

#### TASK [Ajuste startwm.sh 01 (XRDP)]
<hr>

##### changed: [host_alvo]

#### TASK [Ajuste startwm.sh 02 (XRDP)]
<hr>

##### changed: [host_alvo]
<hr>

#### TASK [Inserir startxfce ao fim do arquivo /etc/xrdp/startwm.sh]
<hr>

##### changed: [host_alvo]

#### TASK [copy]
<hr>

##### changed: [host_alvo]

#### TASK [copy]
<hr>

##### changed: [host_alvo]

#### TASK [Habilitando o Ambiente Gráfico]
<hr>

##### changed: [host_alvo]

#### TASK [Daemon Reload]
<hr>

##### ok: [host_alvo]

#### TASK [Desativar AppArmor]
<hr>

##### changed: [host_alvo]

#### TASK [Desativar UFW]
<hr>

##### changed: [host_alvo]

#### TASK [Ativar XRDP]
<hr>

##### ok: [host_alvo]

#### TASK [Ativar Luminati]
<hr>

##### changed: [host_alvo]

#### PLAY RECAP
<hr>

##### host_alvo                       : ok=25   changed=19   unreachable=0    failed=0    skipped=0    rescued=0    ignored=0

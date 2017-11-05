# My dotfiles
Мои dotfiles устанавливаемые с помощью ansible

## Requirements
* Ubuntu 17.10
* git

## Install
* установить и синхронизировать клиенты облачных хранилищ (приватный dotfiles `~/cloud/Dropbox/dotfiles`)
* скачать содержимое этого репозитория и переименовать его в `.dotfiles`
* `sudo ./install_ansible.sh` - устанавливает ansible
* `sh ./bootstrap.sh` - устанавливает все, кроме PhpStorm

### Install PhpStorm
* в файле `ansible/roles/phpstorm/defaults/main.yml` указать последнюю версию пакета
* ``  ansible-playbook --ask-become-pass ansible/playbook.yml --tags="phpstorm" -i ansible/hosts --extra-vars "dotfilespath=`pwd`"  `` - устанавливает/переустанавливает пакет
* PhpStorm устанавливается в `/opt/PhpStorm-{{ phpstorm_version }}`

## Заметки
### base16-gnome-terminal
инструкция по смене тем [base16-gnome-terminal](https://github.com/aaron-williamson/base16-gnome-terminal)

### gpg
#### import
* установить носитель с ключами
* `gpg --import karpov.dimon.gmail.com-public`
* `gpg --import karpov.dimon.gmail.com-secret`

### export
* `gpg --armor --export karpov.dimon@gmail.com > karpov.dimon.gmail.com-public`
* `gpg --export-secret-keys karpov.dimon@gmail.com > karpov.dimon.gmail.com-secret`

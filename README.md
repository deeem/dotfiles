# My dotfiles
Мой плейбук, которые устанавливает все, что я обычно устанавливаю вручную.

## Install
Устанавливать на Ubuntu Gnome

### Предварительная настройка
* установить и синхронизировать клиенты облачных хранилищ (приватный dotfiles `~/cloud/Dropbox/dotfiles`)
* скачать содержимое этого репозитория и переименовать его в `.dotfiles_ansible`
* в файле `ansible/roles/phpstorm/defaults/main.yml` указать последнюю версию пакета

### Установка
* `sudo ./install_ansible.sh` - устанавливает ansible
* `sh ./bootstrap.sh` - запускает плейбук

#### Run single role
``
ansible-playbook --ask-become-pass ansible/playbook.yml --tags="phpstorm" -i ansible/hosts --extra-vars "dotfilespath=`pwd`"
``

## Заметки
* PhpStorm устанавливается в `/opt/PhpStorm-{{ phpstorm_version }}`
* инструкция по смеме тем [base16-gnome-terminal](https://github.com/aaron-williamson/base16-gnome-terminal)

### gpg
#### import
* установить носитель с ключами
* `gpg --import karpov.dimon.gmail.com-public_key`
* `gpg --import karpov.dimon.gmail.com-private_key`

### export
* `gpg --armor --export karpov.dimon@gmail.com > karpov.dimon.com-public_key`
* `gpg --export-secret-keys karpov.dimon@gmain.com > karpov.dimon.com-private_key`

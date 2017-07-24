# My dotfiles
Мой плейбук, которые устанавливает все, что я обычно устанавливаю вручную.

## Install
Устанавливать на Ubuntu Gnome

### Предварительная настройка
* скачать содержимое этого репозитория и переименовать его в `.dotfiles_ansible`
* в файле `ansible/roles/phpstorm/defaults/main.yml` указать последнюю версию пакета

### Установка
* `sudo ./install_ansible.sh` - устанавливает ansible
* `sh ./bootstrap.sh` - запускает плейбук

## Заметки
* PhpStorm устанавливается в `/opt/PhpStorm-{{ phpstorm_version }}`

# README #

### Что это такое ###

* Это система разворачивания виртуальной машины веб-сервера сервера LAMP

### Как запускать? ###
* Качаем и устанавливаем virtualbox [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
Для Ubuntu 14.04 для этого достаточно запустить следующие команды в консоли

```
#!bash

wget http://download.virtualbox.org/virtualbox/4.3.20/virtualbox-4.3_4.3.20-96996~Ubuntu~raring_amd64.deb
sudo dpkg -i virtualbox-4.3_4.3.20-96996~Ubuntu~raring_amd64.deb
```
* Потом надо установить [Vagrant](https://www.vagrantup.com/downloads.html).
Для Ubuntu 14.04 это можно сделать так

```
#!bash

wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.5_x86_64.deb
sudo dpkg -i vagrant_1.6.5_x86_64.deb
```
Для Windows https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.5.msi

* Потом надо установить virtualbox плагин для vagrant

```
#!bash

vagrant plugin install vagrant-vbguest
```
* Далее надо зайти в консоли в папку, куда вы клонировали этот репозиторий и запустить следующее:

```
#!bash

vagrant up --provision
```
и подождать минут 15-20

* Теперь нужно добавить в список хостов наш новый созданный сервер
Для Ubuntu 14.04 это делается так

```
#!bash

sudo su
echo -e "\n\n192.168.10.10\tlamp.dev\n" >> /etc/hosts
exit
```


### Что дальше ###

* После проделанных процедур, сервер уже запущен и работает.
* Чтобы посмотреть БД, надо в браузере открыть http://lamp.dev:81/ или http://192.168.10.11:81/ (логин root, пароль 12345)
* Чтобы остановить сервер, надо в консоли в папке этого репозитория ввести 

```
#!bash

vagrant halt
```
* Чтобы запустить сервер, надо в консоли в папке этого репозитория ввести 

```
#!bash

vagrant up
```
* Чтобы удалить сервер, надо в консоли в папке этого репозитория ввести 

```
#!bash

vagrant destroy
```
* Чтобы получить ssh-доступ к серверу надо ввести

```
#!bash

vagrant ssh
```

# little files
# The default branch has been renamed!
master is now named main

If you have a local clone, you can update it by running the following commands.

git branch -m master main
git fetch origin
git branch -u main main
git remote set-head origin -a
##### tiny
## 00  @       --->>> @
## 01  to      -->> gopro
## 02  on      -->     not yet
## 03  one     -->     not yet
## 04  no      -->> php speedtest
## 05  www     -->     not yet
## 06  hila    -->> game binary
## 07  talia   -->> something from 100 javascript
## 08  oria    -->      not yet
## 09  4567    -->> docker pentagon
## 10  bbb     -->> chat on python
## 11  glances -->  glances -w
## 12  nahman  -->> go1ruby
## 13  go      -->> index of / files bookbook
## 14  tree    -->>     not yet

#### Да, вы можете настроить свой терминал таким образом, чтобы быть подписанным на GitLab, GitHub или любой другой удаленный репозиторий Git, и выбирать между ними. Вот как это можно сделать:

# git remote rm gitlab

git remote add gitlab https://gitlab.com/andregraunt/rusttest.git
git remote add github https://github.com/andregraunt/rusttest.git

1. Установите Git на ваш компьютер, если еще не установлен. Вы можете скачать его с официального сайта Git (https://git-scm.com/downloads) и следовать инструкциям для вашей операционной системы.

2. Зарегистрируйтесь на GitHub (https://github.com) и/или на GitLab (https://gitlab.com), если у вас еще нет учетной записи.

3. Создайте новый проект на GitHub и/или GitLab, либо склонируйте существующий проект на свой компьютер с использованием команды `git clone`.

4. Откройте терминал и перейдите в каталог проекта с помощью команды `cd <путь_к_проекту>`.

5. Добавьте удаленный репозиторий GitLab и/или GitHub в ваш проект, используя команду `git remote add <имя_удаленного_репозитория> <URL_удаленного_репозитория>`. Например:

   - Для GitLab: `git remote add gitlab <URL_удаленного_репозитория_gitlab>`
   - Для GitHub: `git remote add github <URL_удаленного_репозитория_github>`

6. Теперь вы можете выбрать, на какой удаленный репозиторий отправить свои изменения. Используйте команду `git push <имя_удаленного_репозитория> <ветка>` для отправки изменений на выбранный удаленный репозиторий. Например:

   - Для GitLab: `git push gitlab master`
   - Для GitHub: `git push github master`

Когда вы используете команду `git push`, Git будет смотреть на имя удаленного репозитория, указанное в команде, и отправлять изменения на соответствующий удаленный репозиторий.

Вы можете добавить сколько угодно удаленных репозиториев GitLab, GitHub или других сервисов и выбирать между ними, указывая нужное имя удаленного репозитория при выполнении команды `git push`.
# Да, вы можете глобально указать настройки удаленных репозиториев Git, чтобы не указывать их каждый раз при выполнении команд. Для этого вы можете использовать команду `git config` с опциями `--global`.

Вот как вы можете настроить глобальные удаленные репозитории для GitLab и GitHub:

1. Для GitLab:
```
git config --global remote.gitlab.url <URL_удаленного_репозитория_gitlab>
git config --global remote.gitlab.pushurl <URL_удаленного_репозитория_gitlab>
```

2. Для GitHub:
```
git config --global remote.github.url <URL_удаленного_репозитория_github>
git config --global remote.github.pushurl <URL_удаленного_репозитория_github>
```

После выполнения этих команд, Git будет использовать указанные URL-адреса удаленных репозиториев по умолчанию для всех ваших проектов, если вы не указываете другие URL-адреса явно.

Теперь вы можете использовать команду `git push` без указания имени удаленного репозитория, и Git автоматически отправит изменения на правиль
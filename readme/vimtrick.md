# vim vimtrick com
macros  q1 a posle zapisi @1
ctr [ nachalo i ] - konez document
normal mode
du -sh
// 22gg - prigaem na stroku 22
// :vimgrep  word or * or ./  aharkah cnext or cprev
// L - gdolya - prigati po files in okno
// prigat mejdu files - # ./file ve aharkah - gf
//m ve D - global aharkah - ` D beyn files
//m ve p - metka, aharkah lahzor - ` ve p - betoh file //
//udalit - df i do simvola or dF i do simvola
// off podsvetka - :noh   //
//n or N jamp on seml word
//o - new line
// f or t ve abc ve ;  // in line
//skobki pereprigivat para %
//videlit vse slova * pod kursor
ctr ve l prigat po file in windows

ctrl-x ctrl-f - Autocomplete filename and file path segments
• ctrl-n - Move down through the autocomplete match list
• ctrl-p - Move back up through the autocomplete match list
Did you know Vim can repeat your last substitution? Here’s a few options with subtle differences:

 • :& - Repeats last substitution but resets the flags. Also works with just :s.
 • :&& - Repeat last substitution with the same flags.
 •  :%& - Repeat last substitution on entire file, reset flags.
 •  :%&& - Repeat last substitution on entire file, keep flags.
Vim keeps track of the position of every undo-able change and makes the last 100 available to you when you call :changes. You can navigate backwards and forwards to these positions in your file without undoing the change by using g; and g,:

• :changes - Show position of last 100 changes
• g; -Jump backwards to the position of the previous change
• g, - Jump forwards to the position of the next change

To change your split orientation use the command that prepends all split commands: ctrl-w followed by either K or H:

• ctrl-w H - Change horizontal splits to vertical
• ctrl-w K - Change vertical splits to horizontal

Копирование (Янкинг)
Чтобы скопировать текст, поместите курсор в желаемое место и нажмите клавишу y а затем команду перемещения. Ниже приведены некоторые полезные команды восстановления:
* yy — Янкнуть (скопировать) текущую строку, включая символ новой строки.
* 3yy — 3yy (копирование) трех строк, начиная с строки, в которой находится курсор.
* y$ — копировать (копировать) все от курсора до конца строки.
* y^ — Янкинг (копирование) всего от курсора до начала строки.
* yw — Янкнуть (копировать) до начала следующего слова.
* yiw — yiw (скопировать) текущее слово.
* y% — Янкнуть (копировать) на соответствующий символ. По умолчанию поддерживаются пары () , {} и [] . Полезно для копирования текста между совпадающими скобками.
Резка (Удаление)
В обычном режиме d — клавиша для вырезания (удаления) текста. Переместите курсор в желаемое положение и нажмите клавишу d , а затем команду перемещения. Вот несколько полезных команд для удаления:
* dd — Удалить (вырезать) текущую строку, включая символ новой строки.
* 3dd — Удалить (вырезать) три строки, начиная с линии, в которой находится курсор,
* d$ — Удалить (вырезать) все от курсора до конца строки.
Команды движения, применяемые для восстановления, также действительны для удаления. Например, dw удаляет до начала следующего слова, а d^ удаляет все от курсора до начала строки.
Склеивание (Вставка)
Чтобы поместить извлеченный или удаленный текст, переместите курсор в желаемое место и нажмите p чтобы вставить (вставить) текст после курсора, или P чтобы поместить (вставить) перед курсором.
Копирование, вырезание и вставка в визуальном режиме
Визуальный режим Vim позволяет выбирать текст и управлять им.
1. Поместите курсор на линию, с которой вы хотите начать копирование или резку.
2. Визуальный режим имеет три подтипа.
    * Нажмите v чтобы войти в визуальный режим.
    * Нажмите V чтобы войти в визуальный линейный режим, в котором текст выделяется построчно.
    * Нажмите Ctrl+v чтобы войти в режим визуального блока. В этом режиме текст выделяется прямоугольными блоками.
3. Переход в визуальный режим также отмечает начальную точку выбора.
4. Переместите курсор в конец текста, который вы хотите скопировать или вырезать. Вы можете использовать команду перемещения или клавиши со стрелками вверх, вниз, вправо и влево.
5. Нажмите y чтобы скопировать, или d чтобы вырезать выделение.
6. Переместите курсор в то место, куда вы хотите вставить содержимое.
7. Нажмите P чтобы вставить содержимое перед курсором, или p чтобы вставить его после курсора.

Иные способы выхода из терминала
1. Esc + :x + Enter (сохранить и выйти)
2. Esc + :qa + Enter (закрыть все открытые фалы)
3. Esc + Shift ZZ (сохранить и выйти)
4. Esc + Shift ZQ (выйти без сохранения)

Вообще, чтоб выполнить vim ex-команду, когда активно окно терминала, нужно перед ней ввести Ctlr+W и потом :.
reg
:! pwd
terminal macos
//
watch
//Диджитализируй youtube=esli sposob viyti is vim
:! ps axuw | grep vim | grep -v grep | awk '{print $2}' | xargs kill -9
ps axuw | grep vim | grep -v grep | awk '{print $2}' | xargs kill -9

open -n -a telegram. /// open od ahad
open -a playgrounds /// open
open -F -a telegram /// reopen 

# tmux
tmux	start tmux
tmux new -s <name>	start tmux with <name>
tmux ls	shows the list of sessions
tmux a #	attach the detached-session
tmux a -t <name>	attach the detached-session to <name>
tmux kill-session –t <name>	kill the session <name>
tmux kill-server	kill the tmux server


//
which
ll
LL
//
lt,ll, fzf, nnn -H, tmux, ps axuw, ripgrep,

spaseShip-prompt


///battery heal
ioreg -l -w0 | grep Capacity
 ///%
pmset -g batt
///
pmset -g batt | head -n 1 | cut -c19- | rev | cut -c 2- | rev
output
Battery Power
AC Power
///
while :; do clear;watch -n 1 date; sleep 5;done
//
exa
which
nnn -H
echo $0 //kakaya oboloshka
fzf

# elixir ЭЛИКСИР И ВУНШ
Erlang + Ruby = ❤
# https://wunsh.ru/docs/basic-types.html
https://elixirforum.com/

## code beautify
# https://codebeautify.org/
Best Online tool to Calculate different between two dates and Birthday Calculator
# https://codebeautify.org/date-time-calculater
10 --> 00000000 binary to decimal
Decimal to Binary Converter Best online tool
# https://codebeautify.org/decimal-binary-converter

# https://codebeautify.org/text-to-html-converter
Text to HTML Converter
# https://codebeautify.org/html-to-text-converter

wc -w, glances, w, who, whoami, ps, 

yt-dlp -f 'bestvideo[height<=1440][ext=mp4]+bestaudio[ext=m4a]/best[height<=1440][ext=mp4]/best[height<=1440]/bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/best[height<=1080][ext=mp4]/best[height<=1080]'
// mi 720 ad 1080
yt-dlp -f 'bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/best[height<=1080][ext=mp4]/best[height<=1080]'
//
audio mp3
yt-dlp -x --audio-format mp3 [video URL]
//
to mkv. ffmpeg -i webmfile -vcodec copy -acodec copy output.mkv
//
word = "Hello"
letters = [ ]

index = word.length - 1
while index >= 0
  letters << word[index]
  index -= 1
end

reversed_word = letters.join

puts reversed_word

//
numbers = (1..100).to_a
sum = numbers.map {|num| num}.reduce(:+)
puts sum

puts (1..100).sum
s = "privet"
word = "Hello"
letters = [ ]
num = [ ]
x = 10
while x >= 1
  num << x
  x -= 1
  print num
  puts
  
end
puts
puts num.join("-")
index = word.length - 1
puts index
while index >= 0
  letters << word[index]
  index -= 1
end

reversed_word = letters.join

puts reversed_word
print letters
puts
print letters.join(" > ")
//
Вот несколько способов сборки Go-приложения для Windows на macOS:

1. Использовать cross-компиляцию go build:

```
GOOS=windows GOARCH=amd64 go build -o myprogram.exe
```

Это скомпилирует приложение для Windows/AMD64, даже если вы на macOS.

2. Использовать Docker. Постройте Docker-образ с Windows и готовой средой GCC, например mcr.microsoft.com/windows/servercore:ltsc2019. Запустите контейнер и в нем скомпилируйте сборку:

```
docker run -it --rm -v "$PWD":/app mcr.microsoft.com/windows/servercore:ltsc2019 cmd.exe
go build -o myprogram.exe
```

3. Использовать multiarch-образ из Docker Hub golang:windowsservercore-ltsc2019. Он уже имеет все необходимое для cross-компиляции в Windows. 

4. Установить Oracle VM VirtualBox и Windows гостевую ОС. Внутри vagrant up виртуальной машины Windows сделать сборку.

5. Использовать сервис сборки, например Azure Pipelines, Travis CI, GitLab CI - они могут запускать сборки в Windows-контейнерах/ВМ.

6. Установить дополнительное ПО, например gccgo из macports, чтобы поддерживалась cross-компиляция нативных файлов.

Таким образом, используя Docker или виртуализацию, вы сможете собирать native-приложения для Windows непосредственно с macOS.

// for macos
Для сборки Go-приложения для macOS с машины macOS:

1. Просто используйте стандартную команду go build без дополнительных флагов:

```
go build
```

Это скомпилирует приложение для текущей архитектуры и операционной системы, т.е. для macOS.

2. Можно указать флаги GOOS и GOARCH явно:

```
GOOS=darwin GOARCH=amd64 go build
```

3. Использовать Cocoa/Carbon/Objective-C библиотеки. Тогда придется скомпилировать в режиме cgo:

```
CGO_ENABLED=1 go build
``` 

4. Указать имя выходного файла:

```
go build -o myapp
```

5. Собрать для другой архитектуры macOS, напримерarm64:

```
GOOS=darwin GOARCH=arm64 go build
```

Таким образом, для сборки под macOS нужно просто запустить go build без дополнительных параметров. Можно указать CGO и GOOS/GOARCH для более специфических задач.

Если у вас уже есть файл file.mp4, который не воспроизводится на iPhone, то нужно перекодировать его внутри ffmpeg, используя поддерживаемые кодеки.

Команда будет такой:

```
ffmpeg -i file.mp4 -c copy -codec:v libx264 -codec:a aac output.mp4
```

Где:

- -i file.mp4 - указываем входной файл 
- -c copy - копируем потоки как есть
- -codec:v libx264 - перекодируем видео в h264 
- -codec:a aac - перекодируем аудио в aac

Это перекодирует видео и аудио потоки файла file.mp4 в поддерживаемые форматы h264 и aac соответственно. 

Получившийся файл output.mp4 уже должен нормально воспроизводиться на iPhone.

Так что достаточно просто перекодировать кодеки видео и аудио потоков вашего имеющегося файла file.mp4.
Да, с помощью yt-dlp можно сразу скачивать видео в формате, совместимом с iPhone.

Нужно добавить опцию -f:

```
yt-dlp -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4 https://www.youtube.com/watch?v=VIDEO_ID -o file.mp4
```

Где:

- -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4 - формат выходного файла в mp4 с видео в h264 и аудио в aac
- https://www.youtube.com/watch?v=VIDEO_ID - ссылка на видео 
- -o file.mp4 - имя выходного файла

Это скачает видео прямо в нужный формат mp4 с кодеками h264 и aac, который будет совместим с iPhone.

Можно также использовать шаблон названия файла:

```
yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' -o '%(title)s.%(ext)s' https://www.youtube.com/watch?v=VIDEO_ID
```

Тогда файл будет называться по названию видео.

  



loop do
puts"\e[H\e[2J"
end
Использование `\e[H\e[2J` эквивалентно использованию `\033[H\033[2J`. Это все также является последовательностью управляющих символов, которая используется для перемещения курсора в верхний левый угол экрана и очистки экрана в терминале или командной строке.

Код `\e` или `\033` представляет собой управляющую последовательность ASCII Escape, а `[H` и `[2J` являются управляющими кодами, которые указывают на конкретные действия перемещения и очистки экрана.

Обратите внимание, что не все терминалы или командные строки поддерживают эти управляющие символы. В некоторых случаях, чтобы достичь того же эффекта, вы можете использовать другие команды или функции, зависящие от платформы или окружения, в котором вы работаете.
Нет, `\033[H\033[2J` не является регулярным выражением. Это последовательность управляющих символов, которая используется для выполнения определенных действий в терминале или командной строке.

В данном случае, `\033[H` используется для перемещения курсора в верхний левый угол экрана (называемый также "домашней позицией"), а `\033[2J` используется для очистки экрана. Эти управляющие символы обычно используются для создания эффектов форматирования текста или управления выводом в терминале.

Регулярные выражения, с другой стороны, представляют собой шаблоны для поиска и сопоставления текстовых данных. Они используются для выполнения операций, таких как поиск, замена или извлечение определенных паттернов в тексте. Примеры регулярных выражений могут выглядеть так: `/^[A-Za-z]+$/` (проверка на наличие только букв в строке) или `/[0-9]{2}-[0-9]{2}-[0-9]{4}/` (поиск даты в формате "дд-мм-гггг").

Если у вас есть конкретная задача или требование, связанное с регулярными выражениями, пожалуйста, уточните, и я буду рад помочь вам дальше.
# replit
andregraunt@
# https://replit.com/~

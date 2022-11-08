---
## Front matter
title: "Отчёт по лабораторной работе 6"
subtitle: "Основы работы с Midnight Commander (mc). Структура программы на языке ассемблера NASM."
author: "Козлов Всеволод Павлович"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Цель работы - приобретение практических навыков работы в Midnight Commander. Освоение конструкций языка ассемблера mov и int.

# Выполнение лабораторной работы

Ход выполнения лабораторной работы: 

1) Открыл Midnight Commander и перешел в каталог, созданный при выполнении лабораторной работы 5 (рис. [-@fig:001])

![Переход в каталог курса](image/001.png){ #fig:001 width=70% }

2) С помощью клавиши F7 создал каталог lab06 и перешел в него (рис. [-@fig:002])

![Создание каталога lab06](image/002.png){ #fig:002 width=70% }

3) С помощью команды  touch создал файл lab6-1.asm (рис. [-@fig:003])

![Создание файла lab6-1.asm](image/003.png){ #fig:003 width=70% }

4) С помощью функциональной клавиши F4 открыл файл lab6-1.asm редактирования во встроенном редакторе (mcedit) (рис. [-@fig:004])

![Запуск mcedit](image/004.png){ #fig:004 width=70% }

5) Ввел текст программы из листинга (рис. [-@fig:005])

![Ввод текста программы](image/005.png){ #fig:005 width=70% }

Сохранил изменения и вышел из редактора

6) С помощью функциональной клавиши F3 открыл файл lab6-1.asm для просмотра. Убедился, что файл содержит текст программы.  (рис. [-@fig:006])

![Просмотр содержимого файав](image/006.png){ #fig:006 width=70% }

7) Оттранслировал текст программы в объектный файл (рис. [-@fig:007])

![Создание объектного файла](image/007.png){ #fig:007 width=70% }

Выполняю компоновку объектного файла (рис. [-@fig:008])

![Компоновка объектного файла](image/008.png){ #fig:008 width=70% }

Запускаю получившийся исполняемый файл (рис. [-@fig:009])

![Запуск исполняемого файла](image/009.png){ #fig:009 width=70% }

Ввожу ФИО с клавиатуры (рис. [-@fig:010])

![Ввод ФИО с клавиатуры](image/010.png){ #fig:010 width=70% }

Подключение внешнего файла in_out.asm:

1) Скопировал файл in_out.asm в каталог с файлом lab6-1.asm с помощью функциональной клавиши F5 (рис. [-@fig:011])

![Копирование внешнего файла в каталог](image/011.png){ #fig:011 width=70% }

2) Создаю копию файла lab6- 1.asm с именем lab6-2.asm (рис. [-@fig:012])

![Создание копии к файлу lab6-1.asm](image/012.png){ #fig:012 width=70% }

3) Запуск исполняемого файла lab6-2 (с командой sprintLF) (рис. [-@fig:013])

![Запуск lab6-2 при sprintLF](image/013.png){ #fig:013 width=70% }

Запуск исполняемого файла lab6-2_b (с командой sprint) (рис. [-@fig:01])

![Запуск lab6-2_b при sprint](image/014.png){ #fig:014 width=70% }

(команда sprintLF при выводе на экран добавляет к сообщению символ перевода строки; sprint при выводе на экран не добавляет к сообщению символ перевода строки)

Задания для самостоятельной работы:

1) Создал копию файла lab6-1.asm. Внес изменения в программу так, чтобы она выводила введенную строку (рис. [-@fig:015])

![Внесение изменений в текст программы lab6-1_copy.asm](image/015.png){ #fig:015 width=70% }

2) Проверил работоспособность программы (рис. [-@fig:016])

![Проверка работоспособности исполняемого файла](image/016.png){ #fig:016 width=70% }

3) Создал копию файла lab6-2.asm. Внес изменения в программу так, чтобы она выводила введенную строку (с помощью подпрограмм из in_out.asm) (рис. [-@fig:017])

![Внесение изменений в текст программы lab6-2_copy.asm](image/017.png){ #fig:017 width=70% }

Проверил работоспособность программы (рис. [-@fig:018])

![Проверка работоспособности исполняемого файла](image/018.png){ #fig:018 width=70% }

# Выводы

Вывод: приобрел практические навыки работы в Midnight Commander, освоил конструкции языка ассемблера mov и int.

# Список литературы{.unnumbered}

::: {#refs}
:::

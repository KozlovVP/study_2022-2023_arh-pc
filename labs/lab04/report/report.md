---
## Front matter
title: "Шаблон отчёта по лабораторной работе 4"
subtitle: "Язык разметки Markdown"
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

Цель работы - освоение процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

# Выполнение лабораторной работы

Установка необходимого ПО:

1) Установка Tex Live: 

Скачивание необходимого архива (рис. [-@fig:001])

![Скачивание архива](image/001.png){ #fig:001 width=100% }

Распаковка скачанного архива (рис. [-@fig:002])

![Распаковка архива](image/002.png){ #fig:002 width=100% }

Далее перешел в распакованную папку cd install-tl-* и запустил скрипт с root правами (к сожалению, скриншот не 
 сохранился)

Добавил /usr/local/texlive/2022/bin/x86_64-linux в PATH для текущей и будущих сессий (рис. [-@fig:003])

![Добавление /usr/local/texlive/2022/bin/x86_64-linux в PATH](image/003.png){ #fig:003 width=100% }

2) Установка Pandoc и pandoc-crossref:

Скачиваю архивы pandoc (рис. [-@fig:004]) 

![Скачивание архива pandoc](image/004.png){ #fig:004 width=100% }

Скачиваю архивы pandoc-crossref (рис. [-@fig:005]) 

![Скачивание архива pandoc-crossref](image/005.png){ #fig:005 width=100% }

Распаковываю архивы (рис. [-@fig:006]) 

![Распаковка архивов](image/006.png){ #fig:006 width=100% }

Скопировал файлы pandoc и pandoc-crossref в каталог /usr/local/bin/ (рис. [-@fig:007]) 

![Копирование файлов pandoc и pandoc-crossref](image/007.png){ #fig:007 width=100% }

Проверяю корректность выполненных команд (рис. [-@fig:008]) 

![Проверка корректности выполненных команд](image/008.png){ #fig:008 width=100% }

Ход лабораторной работы:

1) Перешел в каталог курса, сформированный при выполнении лабораторной работы №3 и обновил локальный репозиторий (рис. [-@fig:009]) 

![Переход в каталог курса и обновление репозитория](image/009.png){ #fig:009 width=100% }

2) Перешел в каталог с шаблоном отчета по лабораторной работе № 4 (рис. [-@fig:010]) 

![Переход в каталог отчета](image/010.png){ #fig:010 width=100% }

Провел компиляцию шаблона с использованием Makefile (рис. [-@fig:011]) 

![Компиляция шаблона](image/011.png){ #fig:011 width=100% }

Удалил полученные файлы с помощью Makefile  (рис. [-@fig:012]) 

![Удаление полученных файлов](image/012.png){ #fig:012 width=100% }

3) Открыл report.md с помощью текстового редактора   (рис. [-@fig:013]) 

![Редактирование файла report.md](image/013.png){ #fig:013 width=100% }

4) Отредактировал report.md с помощью текстового редактора и сохранил скриншоты в image   (рис. [-@fig:014]) 

![Редактирование файла report.md](image/014.png){ #fig:014 width=100% }

5) С помощью команды make конвертировал report.md в .pdf и .docx  (рис. [-@fig:015]) 

![Конвертирование report.md](image/015.png){ #fig:015 width=100% }

Отправил файлы лабораторной работы 4 на Github (рис. [-@fig:016]) 

![Отправка файлов на Github](image/016.png){ #fig:016 width=100% }

Задание для самостоятпельной работы:

В соответствующем каталоге по лабораторной работе номер 3 создал файл report_3.md и отредактировал его с помощью
 gedit, скриншоты перенес в папку image (рис. [-@fig:017]) 
 
![Редактирование report_3](image/017.png){ #fig:017 width=100% }
 
С помощью команды make создал .pdf и .docx расширения файла report_3 (рис. [-@fig:018]) 
 
![Создание report_3 с другими расширениями](image/018.png){ #fig:018 width=100% }

Отправил файлы на Github(рис. [-@fig:019]) 
 
![Создание report_3 с другими расширениями](image/019.png){ #fig:019 width=100% }

# Выводы

Вывод: освоил процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

::: {#refs}
:::

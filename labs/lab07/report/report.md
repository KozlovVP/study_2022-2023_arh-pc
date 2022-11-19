---
## Front matter
title: "Лабораторная работа 7"
subtitle: "Арифметические операции в NASM"
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

Цель лабораторной работы: освоение арифметических инструкций языка ассемблера NASM.

# Выполнение лабораторной работы

Ход выполнения лабораторной работы:

1) Создал каталог для программам лабораторной работы № 7, перешел в него и создал файл lab7-1.asm (рис. [-@fig:001])

![Создание файла lab7-1.asm](image/001.png){ #fig:001 width=100% }

2) Ввел в файл lab7-1.asm текст программы из листинга (рис. [-@fig:002])

![Редактирование файла lab7-1.asm](image/002.png){ #fig:002 width=100% }

Создал исполняемый файл и запустил его  (рис. [-@fig:003])

![Запуск исполняемого файла](image/003.png){ #fig:003 width=100% }

3) Изменил некоторые строки программы  (рис. [-@fig:004])

![Исправление текста программы](image/004.png){ #fig:004 width=100% }

Создал исполняемый файл для отредактированной программы и запустил его (рис. [-@fig:005])

![Запуск исполняемого файла](image/005.png){ #fig:005 width=100% }

(программа вывела символ “enter”, чьему коду соответствует число 10 в таблице ASCII)

4) Создал файл lab7-2.asm в каталоге ~/work/arch-pc/lab07 (рис. [-@fig:006])

![Создал файл lab7-2.asm](image/006.png){ #fig:006 width=100% }

Ввел текст программы в lab7-2.asm (рис. [-@fig:007])

![Редактирование файла lab7-2.asm](image/007.png){ #fig:007 width=100% }

Создал исполняемый файл и запустил его (рис. [-@fig:008])

![Запуск исполняемого файла](image/008.png){ #fig:008 width=100% }

5) Изменил некоторые строки программы lab7-2.asm (рис. [-@fig:009])

![Редактирование текста программы](image/009.png){ #fig:009 width=100% }

Создал исполняемый файл и запустил его (в результате выполнения программы получил число 10) (рис. [-@fig:010])

![Запуск исполняемого файла](image/010.png){ #fig:010 width=100% }

Заменил функцию iprintLF на iprint (рис. [-@fig:011])

![Редактирование текста программы](image/011.png){ #fig:011 width=100% }

Создал исполняемый файл и запустил его (в отличие от iprintLF функция iprint не переводит курсор на последующую сроку) (рис. [-@fig:012])

![Запуск исполняемого файла](image/012.png){ #fig:012 width=100% }

6) Создал файл lab7-3.asm в каталоге ~/work/arch-pc/lab07 (рис. [-@fig:013])

![Создание файла lab7-3.asm ](image/013.png){ #fig:013 width=100% }

Ввел текст программы из листинга в lab7-3.asm (рис. [-@fig:014])

![Ввод текста программы в lab7-3.asm](image/014.png){ #fig:014 width=100% }

Создал исполняемый файл и запустил его (рис. [-@fig:015])

![Запуск исполняемого файла](image/015.png){ #fig:015 width=100% }

Изменил текст программы файла lab7-3.asm (рис. [-@fig:016])

![Редактирование текста программы](image/016.png){ #fig:016 width=100% }

Создал исполняемый файл и запустил его (рис. [-@fig:017])

![Запуск исполняемого файла](image/017.png){ #fig:017 width=100% }

Ввел текст программы из листинга в lab7-3.asm (рис. [-@fig:018])

![Ввод текста программы в lab7-3.asm](image/018.png){ #fig:018 width=100% }

Создал исполняемый файл и запустил его (рис. [-@fig:019])

![Запуск исполняемого файла](image/019.png){ #fig:019 width=100% }

Ответы на вопросы:

Ответ на вопрос 1: строки { rem: DB 'Ваш вариант: ',0    ;  mov eax,rem   ;     call sprint } отвечают за вывод на экран сообщения ‘Ваш вариант:’.

Ответ на вопрос 2: nasm транслирует текст программы в машинный код, называемый объектным; mov ecx, x – запись адреса переменной x в ‘ECX’; mov edx, 80  - запись длины вводимого сообщения в `EDX`; call sread - вызов подпрограммы ввода сообщения.

Ответ на вопрос 3: atoi – функция преобразует ascii-код символа в целое число и записает результат в регистр eax, перед вызовом atoi в регистр eax необходимо записать число (mov eax,  <int>).

Ответ на вопрос 4: строки { xor edx,edx      ;      mov ebx,20       ;      div ebx         ;        inc edx} отвечают за вычисления варианта.

Ответ на вопрос 5: остаток от деления при выполнении инструкции “div ebx” записывается в регистр edx.

Ответ на вопрос 6: команда inc edx увеличивает значение регистра edx на 1.

Ответ на вопрос 7: строки { mov eax,edx       ;       call iprintLF}  отвечают за вывод на экран результата вычислений.


Задание для самостоятельной работы (мой вариант – 9):


Создание файла для самостоятельной работы (рис. [-@fig:020])

![Создание файла](image/020.png){ #fig:020 width=100% }

Ввел текст программы в файл  (рис. [-@fig:021])

![Ввод текста программы](image/021.png){ #fig:021 width=100% }

Создал исполняемый файл   (рис. [-@fig:022])

![Создание исполняемого файла](image/022.png){ #fig:022 width=100% }

Проверил работу программы для x1 = 3 (рис. [-@fig:023])

![Проверка работоспособности программы](image/023.png){ #fig:023 width=100% }

Проверил работу программы для x2 = 1 (рис. [-@fig:024])

![Проверка работоспособности программы](image/024.png){ #fig:024 width=100% }

# Выводы

Вывод: освоил арифметических инструкций языка ассемблера NASM.

# Список литературы{.unnumbered}

::: {#refs}
:::

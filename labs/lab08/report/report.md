---
## Front matter
title: "Отчёт по лабораторной работе №8"
subtitle: "Дисциплина:Архитектура компьютера"
author: "Ванюшкина Татьяна Валерьевна"

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
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
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


Целью работы является приобретение навыков написания программ с использованием циклов и обработкой аргументов командной строки.


# Теоретическое введение

 Стек —это структура данных, организованная по принципу LIFO («Last In — First Out»
 или «последним пришёл—первымушёл»).Стекявляется частью архитектуры процессора и
 реализован на аппаратном уровне.Для работы со стеком в процессоре естьспециальные
 регистры (ss,bp,sp) и команды.
 Основной функцией стека является функция сохранения адресов возврата и передачи
 аргументов при вызове процедур. Кроме того, в нём выделяется память для локальных
 переменных имогутвременно храниться значения регистров.
 Стек имеетвершину,адрес последнегодобавленного элемента,который хранится в ре
гистре esp (указатель стека). Противоположный конец стека называется дном.Значение,
 помещённое в стек последним,извлекается первым.При помещении значения в стек указа
тель стека уменьшается,а при извлечении—увеличивается.


# Выполнение лабораторной работы


1. Реализация циклов в NASM

 Создаю каталог для программам лабораторной работы №8:

(рис.1 [-@fig:001])
![Создание каталога](image/1){#fig:001 width=70%}
{#fig:001}


Перехожу в него :

(рис.2 [-@fig:002])
![Переход в каталог](image/2){#fig:002 width=70%}
{#fig:002

Создаю файл lab8-1.asm:

(рис.3 [-@fig:003])
![Создание файла](image/3){#fig:003 width=70%}
{#fig:003}

Ввожу в него текст программы из листинга 8.1:

(рис.4 [-@fig:004])
![Ввод текста программы](image/4){#fig:004 width=70%}
{#fig:004}

Создаю исполняемый файл и проверяю его работу:

(рис.5 [-@fig:005])
![создание и проверка файла](image/5){#fig:005 width=70%}
{#fig:005}

Изменяю текст программы добавив изменение значение регистра ecx в цикле:

(рис.6 [-@fig:006])
![Замена текста программы](image/6){#fig:006 width=70%}
{#fig:006}

Создаю исполняемый файл и проверяю его работу:

(рис.7 [-@fig:007])
![Создание и проверка файла](image/7){#fig:007 width=70%}
{#fig:007}

Вношу изменения в текст программы добавив команды push и pop (добавления в стек и извлечения из стека) для сохранения значения счетчика цикла loop:

(рис.8 [-@fig:008])
![Вношу изменения в текст](image/8){#fig:008 width=70%}
{#fig:008}

Создаю исполняемый файл и проверяю его работу:

(рис.9 [-@fig:009])
![Создание и запуск файла](image/9){#fig:009 width=70%}
{#fig:009}

2. Обработка аргументов командной строки

Создаю файл lab8-2.asm:

(рис.10 [-@fig:010])
![Создание файла](image/10){#fig:010 width=70%}
{#fig:010}

Ввожу в него текст программы из листинга 8.2:

(рис.11 [-@fig:011])
![Ввод текста программы](image/11){#fig:011 width=70%}
{#fig:011}

Создаю исполняемый файл и запускаю его,указав аргументы:

(рис.12 [-@fig:012])
![Создание и запуск файла](image/12){#fig:012 width=70%}
{#fig:012}

Создаю файл lab8-3.asm:

(рис.13 [-@fig:013])
![Создание файла](image/13){#fig:013 width=70%}
{#fig:013}

Ввожу в него текст программы излистинга 8.3:

(рис.14 [-@fig:014])
![Ввод текста программы](image/14){#fig:014 width=70%}
{#fig:014}

Создаю исполняемый файл и запускаю его,указав аргументы:

(рис.15 [-@fig:015])
![Создание и запуск файла](image/15){#fig:015 width=70%}
{#fig:015}

 Изменяю текст программы из листинга 8.3 для вычисления произведения аргументов командной строки:

(рис.16 [-@fig:016])
![Замена текста программы](image/16){#fig:016 width=70%}
{#fig:016}

Создаю исполняемый файл и запускаю его:

(рис.17 [-@fig:016])
![Создание и запуск файла](image/17){#fig:017 width=70%}
{#fig:017}

4. Задание для самостоятельной работы

Создаю файл lab8-4.asm:

(рис.18 [-@fig:018])
![Создание файла](image/18){#fig:018 width=70%}
{#fig:018}

Ввожу в него текст программы для вычисления суммы значений функции 𝑓(𝑥) для 𝑥 =𝑥1,𝑥2,...,𝑥𝑛. Вид функции: Вариант 14  𝑓(𝑥) =  7(𝑥 +1)

(рис.19 [-@fig:019])
![Ввод программы](image/19){#fig:019 width=70%}
{#fig:019}

 Создаю исполняемый файл и проверяю его работу:

(рис.20 [-@fig:020])
![Создание и проверка файла](image/20){#fig:020 width=70%}
{#fig:020}


# Выводы


В ходе выполнения лабораторной работы я приобрела навыки написания программ с использованием циклов и обработкой  аргументов командной строки.


# Список литературы{.unnumbered}

Курс: Архитектура компьютеров и операционные системы. Раздел "Архитектура компьютеров" (02.03.00, УГСН) (rudn.ru)

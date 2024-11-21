---
## Front matter
title: "Отчёт по лабораторной работе №7"
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

 Целью работы является изучение команд условного и безусловного переходов.Приобретение навыков написания
 программ с использованием переходов. Знакомство с назначением и структурой файла
 листинга.


# Теоретическое введение

Дляреализацииветвленийвассемблереиспользуютсятакназываемыекомандыпередачи
 управления или команды перехода.Можно выделить2типа переходов:

 • условный переход–выполнение или не выполнение перехода в определеннуюточку
 программы взависимости отпроверки условия.

 • безусловный переход–выполнение передачи управления в определеннуюточку про
граммыбезкаких-либо условий.


# Выполнение лабораторной работы

 Реализация переходов в NASM

1. Создаю каталогдля программамлабораторной работы № 7:

(рис.1 [-@fig:001])
![Создание каталога](image/1){#fig:001 width=70%}
{#fig:001}

2.Перехожу в него и создаю файл lab7-1.asm:

(рис.2 [-@fig:002])
![Создание файла](image/4){#fig:002 width=70%}
{#fig:002}

3.Ввожу в файл lab7-1.asm текст программы излистинга 7.1:

(рис.3 [-@fig:003])
![Ввод текста](image/5){#fig:003 width=70%}
{#fig:003}

4.  Создаю исполняемый файл и запускаю его:

(рис.4 [-@fig:004])
![Создание и запуск файла](image/6){#fig:004 width=70%}
{#fig:004}

5. Изменяю текст программы в соответствии слистингом 7.2:

(рис.5 [-@fig:005])
![Замена текста программы](image/7){#fig:005 width=70%}
{#fig:005}

6. Создаю исполняемый файл и проверяю его работу:

(рис.6 [-@fig:006])
![Создание и проверка файла](image/8){#fig:006 width=70%}
{#fig:006}

7. Создаю файл lab7-2.asm:

(рис.7 [-@fig:007])
![Создание файла](image/9){#fig:007 width=70%}
{#fig:007}

8.  Изучаю текст программы из листинга 7.3 и ввожу в lab7-2.asm:

(рис.8 [-@fig:008])
![Ввод текста](image/10){#fig:008 width=70%}
{#fig:008}

9. Создаю исполняемый файл и проверяю его работу для разных значений B

(рис.9 [-@fig:009])
![Создание и запуск файла](image/11){#fig:009 width=70%}
{#fig:009}

 Изучение структуры файлы листинга

1.  Создаю файл листинга для программы из файла lab7-2.asm:

(рис.10 [-@fig:010])
![Создание файла](image/12){#fig:010 width=70%}
{#fig:010}

2.  Открываю файл листинга lab7-2 с помощью текстового редактора  mcedit:

(рис.11 [-@fig:011])
![Открытие файла](image/14){#fig:011 width=70%}
{#fig:011}

Ознакамливаюсь с его форматом и содержимым:

(рис.12 [-@fig:012])
![файл](image/15){#fig:012 width=70%}
{#fig:012}

Я объясню значение таких строк как mov ebx, push ebx и pop ebx

функция mov ebx перемещает данные из указанного источника  в регистр ebx. Регистр ebx - это 32-битный регистр общего назначения в архитектуре x86.

функция push ebx помещает значение регистра ebx в стек. Стек - это область памяти, которая используется для временного хранения данных.

функция pop ebx пзвлекает значение из вершины стека и помещает его в регистр ebx

3. Открываю файл с программой lab7-2.asm и удаляю операнд  mov [max],ecx :

(рис.13 [-@fig:013])
![Удаление операнда](image/16){#fig:013 width=70%}
{#fig:013}

4. Выполняю трансляцию с получением файлалистинга:

(рис.14 [-@fig:014])
![Выполнение трансляции](image/17){#fig:014 width=70%}
{#fig:014}

5. Появился такой файл как lab7-2.lst:

(рис.15 [-@fig:015])
![lab7-2.lst](image/177){#fig:015 width=70%}
{#fig:015}

Задание для самостоятельной работы

1. Создаю файл lab7-3.asm:

(рис.16 [-@fig:016])
![Создание файла](image/18){#fig:016 width=70%}
{#fig:016}

2.  Пишу программу нахождения наименьшей из 3 целочисленных переменных 𝑎,𝑏и.Значения переменных беру из табл.7.5 в соответствии с 14 вариантом,полученным при выполнении лабораторной работы №7:

(рис.16 [-@fig:016])
![Ввод программы](image/19){#fig:016 width=70%}
{#fig:016}

3. Создаю исполняемый файл и проверяю его работу:

(рис.17 [-@fig:017])
![Создание и проверка файла](image/20){#fig:017 width=70%}
{#fig:017}

4. Создаю файл lab7-4.asm:

(рис.18 [-@fig:018])
![Создание файла](image/21){#fig:018 width=70%}
{#fig:018}

5. Пишу в него программу,которая для введенных с клавиатуры значений 𝑥 и 𝑎 вычисляет значение заданной функции 𝑓(𝑥) и выводит результат вычислений.

(рис.19 [-@fig:019])
![Ввод программы](image/22){#fig:019 width=70%}
{#fig:019}

6. Создаю исполняемый файл и проверяю его работу для значений 𝑥1=2, 𝑎1=3,  𝑥2=4, 𝑎2=2:

(рис.20 [-@fig:020])
![Создание и проверка файла](image/23){#fig:020 width=70%}
{#fig:020}


# Выводы

 В ходе выполнения лабораторной работы я изучила команды условного и безусловного переходов, приобрела навыки написания программ с использованием переходов и познакомилась с назначением и структурой файла
 листинга.

# Список литературы{.unnumbered}

Курс: Архитектура компьютеров и операционные системы. Раздел "Архитектура компьютеров" (02.03.00, УГСН) (rudn.ru) 

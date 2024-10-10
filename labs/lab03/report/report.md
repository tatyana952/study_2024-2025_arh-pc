---
## Front matter
title: "Отчёт по лабораторной работе №3"
subtitle: "Дисциплина:Архитектура компьютера"
author: "Ванюшкина Татьяна Валерьевна"

## Generic otions
lang: ru-RU
toc-title: "Язык разметки Markdown"

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

Освоение процедуры оформления отчётов с помощью легковесного языка разметки Markdown

# Задание

1. Установка необходимого программного обеспечения
2. Заполнение отчета по выполнению лабораторной работы №3
3. Задание для самостоятельной работы

# Теоретическое введение

3.2. Теоретическое введение
3.2.1. Базовые сведения о Markdown
Чтобы создать заголовок, используйте знак #, например:
# This is heading 1
## This is heading 2
### This is heading 3
#### This is heading 4
Чтобы задать для текста полужирное начертание, заключите его в двойные звездочки:
This text is **bold**.
Чтобы задать для текста курсивное начертание, заключите его в одинарные звездочки:
This text is *italic*.
Чтобы задать для текста полужирное и курсивное начертание, заключите его в тройные
звездочки:
This is text is both ***bold and italic***.
Блоки цитирования создаются с помощью символа >:
> The drought had lasted now for ten million years, and the reign of the
terrible lizards had long since ended. Here on the Equator, in the
continent which would one day be known as Africa, the battle for existence
had reached a new climax of ferocity, and the victor was not yet in sight.
In this barren and desiccated land, only the small or the swift or the
fierce could flourish, or even hope to survive.
1. First instruction
1. Sub-instruction
1. Sub-instruction
1. Second instruction
Чтобы вложить один список в другой, добавьте отступ для элементов дочернего списка:
1. First instruction
1. Second instruction
1. Third instruction
Неупорядоченный (маркированный) список можно отформатировать с помощью звездо-
чек или тире:
* List item 1
* List item 2
* List item 3
Чтобы вложить один список в другой, добавьте отступ для элементов дочернего списка:
- List item 1
- List item A
- List item B
- List item 2
Синтаксис Markdown для встроенной ссылки состоит из части [link text], представляю-
щей текст гиперссылки, и части (file-name.md) – URL-адреса или имени файла, на который
дается ссылка:
[link text](file-name.md)
или
[link text](http://example.com/ "Необязательная подсказка")
Markdown поддерживает как встраивание фрагментов кода в предложение, так и их разме-
щение между предложениями в виде отдельных огражденных блоков. Огражденные блоки
кода — это простой способ выделить синтаксис для фрагментов кода.  Общий формат ограж
денных блоков кода:
``` language
your code goes in here
3.2.2. Оформление формул в Markdown
Внутритекстовые формулы делаются аналогично формулам LaTeX. Например, формула
sin2(𝑥) + cos2(𝑥) = 1 запишется как
$\sin^2 (x) + \cos^2 (x) = 1$
Выключение формулы:
sin2(𝑥) + cos2(𝑥) = 1 (3.1)
со ссылкой в тексте «Смотри формулу ({-eq. 3.1}).» записывается как
$$
\sin^2 (x) + \cos^2 (x) = 1
$$ {#eq:eq1}
Смотри формулу (`[-@eq:eq1]`).
3.2.3. Оформление изображений в Markdown
В Markdown вставить изображение в документ можно с помощью непосредственного
указания адреса изображения. Синтаксис данной команды выглядит следующим образом:
![Подпись к рисунку](/путь/к/изображению.jpg "Необязательная подсказка"){
#fig:fig1 width=70% }↪
Здесь:
• в квадратных скобках указывается подпись к изображению;
• в круглых скобках указывается URL-адрес или относительный путь изображения, а так-
же (необязательно) всплывающую подсказку, заключённую в двойные или одиночные
кавычки.
• в фигурных скобках указывается идентификатор изображения (#fig:fig1) для ссылки
на него по тексту и размер изображения относительно ширины страницы (width=90%)
Ссылка на изображение (рис. 3.1) может быть оформлена следующим образом (рис. [@fig:fig1])
3.2.4. Обработка файлов в формате Markdown
Преобразовать файл README.md можно следующим образом:
pandoc README.md -o README.pd
Для компиляции отчетов по лабораторным работам предлагается использовать следую-
щий Makefile
FILES = $(patsubst %.md, %.docx, $(wildcard *.md))
FILES += $(patsubst %.md, %.pdf, $(wildcard *.md))
LATEX_FORMAT =
FILTER = --filter pandoc-crossref
%.docx: %.md
-pandoc "$<" $(FILTER) -o "$@"
%.pdf: %.md
-pandoc "$<" $(LATEX_FORMAT) $(FILTER) -o "$@"
all: $(FILES)
@echo $(FILES)
clean:
-rm $(FILES) *~

# Выполнение лабораторной работы
1. Открываю терминал
2. Перехожу в каталог курса сформированный при выполнении лабораторной работы
№2:/home/tatyana/Изображения/Снимки экрана/Снимок экрана от 2024-10-10 23-16-43.png
Обновляю локальный репозиторий, скачав изменения из удаленного репозитория с помо-
щью команды
git pull
/home/tatyana/Изображения/Снимки экрана/Снимок экрана от 2024-10-10 23-20-12.png
3. Перехожу в каталог с шаблоном отчета по лабораторной работе № 3
cd ~/work/study/2023-2024/"Архитектура компьютера"/arch-pc/labs/lab03/report
/home/tatyana/Изображения/Снимки экрана/Снимок экрана от 2024-10-10 23-20-38.png
4. Провожу компиляцию шаблона с использованием Makefile. Для этого ввожу ко-
манду
make
/home/tatyana/Изображения/Снимки экрана/Снимок экрана от 2024-10-11 00-02-37.png
Открываю и проверяю корректность полученных файлов.
5. Удаляю полученный файлы с использованием Makefile. Для этого введите команду
make clean
/home/tatyana/Изображения/Снимки экрана/Снимок экрана от 2024-10-11 00-03-05.png
Проверяю, что после этой команды файлы report.pdf и report.docx были удалены.
6. Открываю файл report.md c помощью любого текстового редактора, например gedit
gedit report.md
/home/tatyana/Изображения/Снимки экрана/Снимок экрана от 2024-10-11 00-03-33.png
/home/tatyana/Изображения/Снимки экрана/Снимок экрана от 2024-10-11 00-05-48.png
7. Заполняю отчет и компелирую отчет с использованием Makefile. Проверяю кор-
ректность полученных файлов. 
/home/tatyana/Изображения/Снимки экрана/Снимок экрана от 2024-10-11 00-10-35.png
8. Загружаю файлы на Github.
cd ~/work/study/2023-2024/"Архитектура компьютера"/arch-pc
git add .
git commit -am 'feat(main): add files lab-3'
git push
3.5. Задание для самостоятельной работы
1. В соответствующем каталоге делаю отчёт по лабораторной работе № 2 в формате
Markdown. В качестве отчёта необходимо предоставить отчёты в 3 форматах: pdf, docx
и md.
2. Загружаю файлы на github.
Внимательно изучите структуру этого файла


# Выводы

я освоила процедуру оформления отчётов с помощью легковесного языка разметки Markdown

# Список литературы{.unnumbered}

::: {#refs}
:::

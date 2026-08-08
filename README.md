# Tiny score collection

LilyPond sources and compiled PDFs for historical music, dances, and
arrangements. Bilingual Cantiga sources generate original-language and Russian
phonetic editions; some Playford arrangements include chord symbols.

## Contents

- `medieval/` -- Medieval music.
- `renaissance/` -- Renaissance vocal and instrumental music.
- `playford/` -- English country dances associated with John Playford.
- `balalaika/` -- Arrangements for balalaika.

Only notation sources (`.ly`) and compiled scores (`.pdf`) belong in repertory
folders.

## Build

- `make all` compiles every score.
- `make score FILE=medieval/csm77/csm77_bilingual.ly` compiles one source.

Unless noted in a score, the collection uses the
[Creative Commons Attribution 4.0 International](LICENSE) license. Scores may
contain errors.

---

# Небольшая коллекция нот 

Исходники LilyPond и PDF исторической музыки, танцев и аранжировок. Двуязычные
исходники кантиг создают оригинальные и русские фонетические редакции; некоторые
аранжировки Плейфорда содержат обозначения аккордов.

## Содержание

- `medieval/` -- Средневековая музыка.
- `renaissance/` -- Вокальная и инструментальная музыка Ренессанса.
- `playford/` -- Английские контрдансы, связанные с Джоном Плейфордом.
- `balalaika/` -- Аранжировки для балалайки.

В репертуарных папках хранятся только исходники нот (`.ly`) и готовые партитуры
(`.pdf`).

## Сборка

- `make all` компилирует все партитуры.
- `make score FILE=medieval/csm77/csm77_bilingual.ly` компилирует один исходник.

Если в партитуре не указано иное, коллекция распространяется по лицензии
[Creative Commons Attribution 4.0 International](LICENSE). В нотах могут быть
ошибки.

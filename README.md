# Musicaficta score collection

LilyPond sources and compiled PDF scores for historical music, dances, and
arrangements. Some bilingual sources generate several PDF editions.

## Contents

- `medieval/` -- Cantigas de Santa Maria, Ludus Danielis, and Minnesang.
- `renaissance/` -- Renaissance vocal and instrumental music.
- `playford/` -- English country dances associated with John Playford.
- `balalaika/` -- Arrangements for balalaika.

Only notation sources (`.ly`) and compiled scores (`.pdf`) belong in repertory
folders.

## Build

- `make all` compiles every score.
- `make score FILE=medieval/csm77/csm77_bilingual.ly` compiles one source.

Unless noted in a score, the collection uses the
[Creative Commons Attribution 4.0 International](LICENSE) license. Credit the
authors and arrangers named in each source.

---

# Коллекция нот Musicaficta

Исходники LilyPond и скомпилированные PDF исторической музыки, танцев и
аранжировок. Некоторые двуязычные исходники создают несколько PDF-редакций.

## Содержание

- `medieval/` -- Cantigas de Santa Maria, Ludus Danielis и миннезанг.
- `renaissance/` -- Вокальная и инструментальная музыка Ренессанса.
- `playford/` -- Английские контрдансы, связанные с Джоном Плейфордом.
- `balalaika/` -- Аранжировки для балалайки.

В репертуарных папках хранятся только исходники нот (`.ly`) и готовые партитуры
(`.pdf`).

## Сборка

- `make all` компилирует все партитуры.
- `make score FILE=medieval/csm77/csm77_bilingual.ly` компилирует один исходник.

Если в партитуре не указано иное, коллекция распространяется по лицензии
[Creative Commons Attribution 4.0 International](LICENSE). Указывайте авторов
и аранжировщиков, названных в исходном файле.

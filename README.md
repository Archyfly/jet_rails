# README

Предметная область:
Есть игроки, которые играют за команду, принимая участие в матчах.
Есть показатели ("пробежал 10+ км", "сделал 70+ % точных передач" и так далее).
Игроки в каждом матче какие-то показатели выполняют, а какие-то нет.

Задание:
Создать модели к данной предметной области.

Написать методы, которые позволяют:

- отметить, что игрок выполнил такой-то показатель в матче
- проверить выполнил ли игрок конкретный показатель хотя бы 1 раз за предыдущие 5 матчей команды
    Выбрать последние 5 матчей команды - сохранить набор (ok, last_five_matches, def in MatchesHelper)
    Выбрать игрока - сохранить id
    Выбрать achieve_id.
- выбрать Top-5 игроков по конкретному показателю в конкретной команде и по всем командам в целом

P.S. Полный набор атрибутов в моделях не принципиален, так что можно обойтись минимально достаточным.


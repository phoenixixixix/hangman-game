# Hangman-game
Простая консольная игра на Руби.

## Установка
1. Для работы нужно [установить ruby][1], [установить bundler][2]
1. Скопировать гит-репозиторий
2. Зайти через консоль в папку с игрой `hangman-game`
3. Исполнить команду
```
bundle install
```

## Начать игру
Вызовите программу в консоли.
```
bundle exec ruby main.rb
```

## Правила игры
При запуске программа загадывает случайное слово которое вы методом подбора букв должны угадать.  
У вас есть 7 попыток. Виселица дорисовываеться после каждой неудачной попытки

### Добавление слов
По пути: `./hangman_game/data` откройте в текстовом редакторе файл `words.txt`.
Добавьте по порядку сверху вниз нужные слова (в верхнем регистре), после чего 
сохраните и закройте файл.


[1]: https://www.ruby-lang.org/ru/documentation/installation/
[2]: https://github.com/rubygems/bundler

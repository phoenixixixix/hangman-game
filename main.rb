if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end


require_relative 'lib/console_interface'
require_relative 'lib/game'

# 1. Поздороваться
puts logo = File.readlines("#{__dir__}/data/logo/hangman_logo.txt", chomp: true)
puts "Всем привет!\n\r"

# 2. Загрузить случайное слово с файла
word = File.readlines(__dir__ + '/data/words.txt', encoding: 'UTF-8', chomp: true)
           .sample
game = Game.new(word)
console_interface = ConsoleInterface.new(game)

# 3. Пока игра не закончилась
until game.over?
  # 3.1 Вывести очередное состояние игры
  console_interface.print_out

  # 3.2 Спросить очеребную букву
  letters = console_interface.getting_input

  # 3.3 Обновить состояние игры
  game.play!(letters)
end

# 4. Вывести финальное состояние игры
console_interface.print_out

puts "What is your string? "
x = gets.chomp

puts "What is your key? "
$key = gets.to_i + 1


def caesar_cipher (string)

  shiftArray = []
  char = string.chars.map(&:ord)

  $key.times do |key|
    shiftArray << char.map do |c|
      ((c+ (key)) < 123 ? (c+key) : (c+key)-26).chr
    end.join
  end
shiftArray[$key-1]
end

puts caesar_cipher(x)


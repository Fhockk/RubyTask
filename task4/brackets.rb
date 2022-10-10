BRACKETS = { "(" => ")", "{" => "}", "[" => "]" }
open_brackets = "{[("
close_brackets = "}])"

puts "Введите \"q\" чтобы закончть ввод"
my_stack = []
is_valid = true

loop do
  print "Введите следующую скобку : "
  ch = gets.chomp
  if ch == "q"
    break
  end

  if open_brackets.include?(ch)
    my_stack.push(ch)
  elsif close_brackets.include?(ch)
    ch == BRACKETS[my_stack.last] ? my_stack.pop : is_valid = false
  else
    puts "----- !Можно вводить только одну скобку! -----"
  end
end

puts "=> #{(my_stack.empty? && is_valid)}"
def main()
    words = ["очки", "ручка", "чашка", "стакан", "гриб", "мышь", "руби", "клоун"]
    guess_word = words[rand(words.length)]
    count_s = guess_word.length 
    lives = 10
    mistakes = Array.new()
    already_guess = ""
    game_result = ""

    puts guess_word
copy = Array.new(guess_word.length, "_")
loop do 

    puts "\nСлово: #{copy.join(".")}"
    puts "Осталось попыток: #{lives}"
    puts "Ошибки: #{mistakes.join(", ")}"
    
    print "Введите буку: "
    user_ch = gets.chomp

    if !(/[[:alpha:]]/.match(user_ch))
        puts "---- !Можно вводить только буквы! ----"
        next
    elsif already_guess.include?(user_ch)
        puts "---- !Вы уже угадали эту букву! ----"
        next
    end

    dublicate = guess_word.count(user_ch.downcase)
    if dublicate == 0
        puts "<< Вы ошиблись"
        lives -= 1
        mistakes << user_ch
    else
        puts "<< Вы угадали"
        count_s -= dublicate
        change_string(copy, guess_word, user_ch)
        already_guess << user_ch
    end

    if count_s == 0 
        game_result = "Вы отгадали слово #{guess_word}"
        break
    elsif lives == 0 
        game_result = "Вы не отгадали слово #{guess_word}"
        break
    end
end

puts game_result

end

def change_string(copy, guess_word, user_ch)
    d = 0
    while d < guess_word.length do
        if guess_word[d] == user_ch
            copy[d] = user_ch
        end
        d += 1
    end
end

main()
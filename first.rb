variants = ['rock', 'scissors', 'paper']
while true
    comp_var = rand(3)
    print("Your turn(0 - rock, 1 - scissors, 2 - paper, 3 - exit): ")
    user_var = gets.to_i
    break if user_var == 3
    if user_var < 0 || user_var > 2
        puts("Enter correct data")
        next
    else
        puts("Computer choose: " + variants[comp_var])
        puts("Your choose: " + variants[user_var])
        if user_var == comp_var
            puts('Draw')
            next
        end

        if comp_var == (user_var + 1) % 3
            puts("You win. :)")
        else
            puts("You lose. :(")
        end
    end
end

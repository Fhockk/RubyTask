print("Enter the math sign: ")
math_sign = ''
loop do 
    math_sign = gets.chomp
    if ['+', '-', '*', '/'].include? math_sign
        break
    else
        next
    end
end

print("How many numbers do you want?: ")
numb_qnt = gets.to_i

arr = Array.new(numb_qnt * 2 - 1)

counter = 0
while (counter < arr.length)
    if counter % 2 == 0
        print("Enter the number: ")
        arr[counter] = gets.to_i
    else
        arr[counter] = math_sign
    end
    counter += 1
end

prev = arr.join()
begin
    result = eval(prev)
    print("Result: " + result.to_s)
rescue ZeroDivisionError
    puts 'Division by zero'
rescue TypeError
    puts 'TypeError'
end

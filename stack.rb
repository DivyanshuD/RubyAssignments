stack=[]
choice='y'
while (choice=='y')
    puts "1. push"
    puts "2. pop"
    puts "3. peek"
    puts "4. exit"
    choice=gets.chomp
    case choice
    when "1"
    string=gets.chomp
    stack.push string
    puts string+" is pushed element"
    when "2"
    puts stack[stack.lenth-1]+" is Popped element"
    puts stack.pop
    when "3"
    puts stack[stack.length-1]+" is element on peek"
    when "4"
    exit
    else
    puts "you have entered wrong choice"
    end
    puts "Do you want to continue(y/n)"
    choice=gets.chomp
end


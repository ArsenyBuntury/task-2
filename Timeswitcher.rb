class Timeswitch
    puts 'Please, enter date'
    puts 'Day:'
    @day = gets.to_i
    puts 'Month:'
    @month = gets.to_i
    puts 'Year'
    @year = gets.to_i

    puts 'Enter duration:'
    @duration = gets.to_i
    puts 'Enter the number of subsequent dates'
    @n = gets.to_i

    puts @input = Time.new(@year, @month, @day)
    day_switcher = -> { @input += 86_400 * @duration }
    week_switcher = -> { @input += 604_800 * @duration }
    month_switcher = -> { @input += @duration.month }
    year_switcher = -> { @input += @duration.year }

    puts 'Enter the object of switching: 1 - day; 2 - week; 3 - month; 4 - year.'
    choice = gets.chomp!.to_i
    choice_hash = { 1 => day_switcher, 2 => week_switcher, 3 => month_switcher, 4 => year_switcher }

    if choice_hash[choice]
        @n.times do
            p choice_hash[choice].call
        end
    end
end
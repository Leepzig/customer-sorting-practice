
class SorterInterface

    def initialize()
        welcome_message()
    end

    def welcome_message
        puts "Welcome to Sorter"
        get_file()
    end

    def get_file
        puts "Type the file you'd like to sort:"
        @file = gets.chomp
        get_sorting_property()
    end

    def get_sorting_property
        puts "We can sort by name or vehicle, type one or the other:"
        @sorter = gets.chomp
        sort()
    end

    def sort
        FileReader.new(@file)
        display_sorted_customers()
    end

    def display_sorted_customers
        Customer.display_sorted(@sorter)
    end
end
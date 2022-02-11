require "./customer.rb"

class FileReader
    attr_accessor :sorting_property

    def initialize(file)
        @file = read_file(file)
        parse_file()
    end

    private

    def read_file(file)
        File.readlines(file)
    end

    def customer_init(line, separator)
        Customer.new(line.split(separator))
    end

    # maybe separate this into two methods
    def parse_file
        @file.each do |line|
            if line.include?(',')
                customer_init(line, ',')
            else 
                customer_init(line, '|')
            end
        end
    end

end
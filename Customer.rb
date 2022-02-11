class Customer
    attr_accessor :first_name, :last_name, :email, :vehicle_type, :vehicle_name, :vehicle_length
    
    @@all = []
  
    def initialize(customer_line)
      @first_name = customer_line[0]
      @last_name = customer_line[1]
      @email = customer_line[2]
      @vehicle_type = customer_line[3]
      @vehicle_name = customer_line[4]
      @vehicle_length = customer_line[5]
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def full_name
      "#{first_name} #{last_name}"
    end
  
    
    def self.display_sorted(prop)
        Customer.sort_customers(prop)
        @sorted_customers.each do |customer|
            puts "#{customer.full_name} - Email: #{customer.email} - Vehicle Type: #{customer.vehicle_type.capitalize} - Vehicle Name: #{customer.vehicle_name} - Vehicle Length: #{customer.vehicle_length}"
            # puts "#{self.full_name} - Email: #{self.email} - Vehicle Type: #{self.vehicle_type.capitalize} - Vehicle Name: #{self.vehicle_name} - Vehicle Length: #{self.vehicle_length}"
        end
    end

    def self.sort_customers(prop)
        if prop == 'name'
            @sorted_customers = self.all.sort_by {|customer| customer.full_name}
        elsif prop == 'vehicle'
            @sorted_customers = self.all.sort_by {|customer| customer.vehicle_type}
        end
    end
    
    # def self.sort_by_vehicle
    #   self.all.sort_by {|customer| customer.vehicle_type}.map do |customer|
    #     "#{customer.vehicle_type.upcase} - Customer: #{customer.full_name} - Email: #{customer.email} - Vehicle Name: #{customer.vehicle_name} - Vehicle Length #{customer.vehicle_length}"
    #   end
    # end
  end


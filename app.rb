require 'pry'

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

companies.each {|company| puts "#{company.name} - #{company.size}"}

sum_sizes = companies.map {|company| company.size}.reduce {|sum, size| sum+=size}

over_100 = companies.select {|company| company.size > 100}

beta_company = companies.find {|company| company.name == "Beta"}

largest_company = companies.max_by {|company| company.size}

sort_large_to_small = companies.sort_by {|company| company.size}.reverse

binding.pry
### Your code below this

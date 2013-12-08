# class Asset

#   @value

#   # atttr_accessor: hello -- this is an instance method

#   def self.method
#     @value
#   end

#   def method
#     Asset.method
#   end

#   def instance_method
#     @yield
#   end

#   def self.test_variable
#     @asset = Asset.new
#     @asset.instance_method
#   end

# end

# class StockMixinTest

#   include Comparable
#   include Enumerable

#   def initialize
#     @value
#     @pe_ratio

#     @stocks = ["AXP", "KO", "CME", "TSCO"]
#     @prices = [1,2,3,4,5]
#   end

#   def value
#     @value
#   end

#   def <=>(other)
#     @value <=> other.value

#   end

#   def each
#     @stocks.each { |stock| yield stock}
#     @prices.each { |p| yield p }
#   end


# end

# stocktest = StockMixinTest.new

# # stocktest.each { |s| puts s }

# puts stocktest.drop(1)

module Fireable

  attr_accessor :rounds

  def fire
    @rounds -= 1
  end

  def reload(number_of_rounds)
    @rounds = number_of_rounds
  end
end

class M16
  include Fireable

  def initialize
    reload(20)
  end

  def improve_rifle
    self.rounds += 10
  end


end


gun = M16.new
gun.fire
puts gun.rounds
gun.improve_rifle
puts gun.rounds
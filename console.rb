require 'pry'
require_relative './customers'
require_relative './banks'
require_relative './accounts'

customer1 = Customer.new("Justin")
customer2 = Customer.new("Alexis")
customer3 = Customer.new("Lindsay")
customer4 = Customer.new("Jack")
customer5 = Customer.new("Sylwia") 

bank1 = Bank.new("Capital")
bank2 = Bank.new("Anything Bank")
bank3 = Bank.new("Great Bank")
bank4 = Bank.new("Going Under Bank")

account1 = Account.new(customer1, bank1, 100_000)
account2 = Account.new(customer1, bank2, 50_000)
account7 = Account.new(customer1, bank2, 50_000)
account3 = Account.new(customer2, bank1, 1_000_000)
account4 = Account.new(customer2, bank3, 5)
account5 = Account.new(customer3, bank1, 1_150_000)
account6 = Account.new(customer4, bank1, 42)


binding.pry
0

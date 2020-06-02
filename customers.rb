class Customer
   attr_accessor :name

   @@all = []
   
   def initialize(name)
       @name = name
       save 
   end

   def save
       self.class.all << self
   end

   def self.all
       @@all
   end

   def accounts
    Account.all.select{|account| account.customer == self}
   end

   def banks
       accounts.map(&:bank)
   end

# - Customer#balance should return total balance from all the accounts from all the bank that are associated with the customer
   def balance
        # accounts.reduce(0){|sum, account| sum + account.balance}
        accounts.sum{|account| account.balance}        
   end

end

# ## customer
# - Customer.new() should create a new customer with a name 

# - Customer#name should work

# - Customer.all should return all customer instances

# - Customer#accounts should return all accounts that belong to the customer

# - Customer#banks should return all banks that are associated with the customer



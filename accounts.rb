class Account
    attr_accessor :customer, :bank, :balance

    @@all = []

    def initialize(customer, bank, balance)
        @customer = customer
        @bank = bank
        @balance = balance
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end
end

## account
# - Account.new() should create a new account that takes a customer instance, a bank instance, and a balance

# - Account#customer, Account#bank and Account#balance should work

# - Account.all should return all account instances

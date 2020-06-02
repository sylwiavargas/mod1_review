class Bank
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
        Account.all.select{|account| account.bank == self}
    end

    def customers
        accounts.map(&:customer)
        # accounts.map{|account| account.customer}
    end

    def open_account(customer)
        Account.new(customer, self, 100)
    end
end



# ## bank
# - Bank.new() should create a new bank with a name

# - Bank#name should work

# - Bank.all should return all bank instances

# - Bank#accounts should return all accounts that belong to the bank

# - Bank#customers should return all of the customers that are associated with the bank

# - Bank#open_account takes customer instance as an argument and creates a new account with 100 as an initial balance

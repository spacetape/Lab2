class BankAccount {
    let accountNumber: String
    let accountOwner: String
    var balance: Double
    
    init(accountNumber: String, accountOwner: String, startingBalance: Double) {
        self.accountNumber = accountNumber
        self.accountOwner = accountOwner
        self.balance = startingBalance
    }
    
    func deposit(amount: Double) {
        guard amount > 0 else {
            print("Deposit amount must be greater than zero.")
            return
        }
        balance += amount
        print("Deposit of \(amount) successfully completed. Current balance: \(balance)")
    }
    
    func withdraw(amount: Double) {
        guard amount > 0 else {
            print("Withdrawal amount must be greater than zero.")
            return
        }
        guard balance >= amount else {
            print("Insufficient funds. Cannot withdraw \(amount). Current balance: \(balance)")
            return
        }
        balance -= amount
        print("Withdrawal of \(amount) successfully completed. Current balance: \(balance)")
    }
    
    func getBalance() -> Double {
        return balance
    }
    
    func displayAccountInfo() {
        print("Account Information:")
        print("Account Number: \(accountNumber)")
        print("Account Owner: \(accountOwner)")
        print("Current Balance: \(balance)")
    }
}

// Example usage:
let account = BankAccount(accountNumber: "1234567890", accountOwner: "John Doe", startingBalance: 1000.0)
account.deposit(amount: 500.0)
account.withdraw(amount: 200.0)
account.displayAccountInfo()

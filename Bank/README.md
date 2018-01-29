# Bank tech test

The objective of this program is to simulate a bank account via the user's terminal, allowing them to maintain a virtual balance by depositing and withdrawing funds.

# User stories
```
As a customer
To give my money to somebody responsible
I want to create a bank account
```
```
As a customer
To add to my balance
I want to deposit money
```
```
As a customer
To retrieve my money
I want to withdraw from my balance
```
```
As a customer
To ensure the integrity of each transaction
I want to view accurate timestamps
```

# Challenge

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012

**And** a deposit of 2000 on 13-01-2012

**And** a withdrawal of 500 on 14-01-2012

**When** she prints her bank statement

**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
© 2018
```

# Installation

```
$ git clone https://github.com/VarunCodes/Tech-Tests.git   # Clone the repo
$ cd Tech-Tests     
$ cd Bank         # Navigate to the directory
$ bundle          # Install pre-requisite gems
$ rspec           # Run RSpec to see the tests pass
```

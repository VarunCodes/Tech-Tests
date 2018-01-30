require 'account'

describe Account do
  subject(:account) { Account.new }

  describe 'New account' do
    it 'starts with a balance of zero' do
      expect(account.balance).to eq 0
    end
  end

  describe 'Depositing' do
    it 'adds money to my total balance' do
      expect(account.balance).to eq 0
      account.deposit(500)
      expect(account.balance).to eq 500
    end
  end

  describe 'Withdrawing' do
    it 'removes money from my total balance' do
      account.deposit(1000)
      account.withdraw(251)
      expect(account.balance). to eq 749
    end
  end
end

require 'account'

describe Account do
  subject(:account) { Account.new(1000) }

  describe 'New account' do
    it 'starts with a balance of a custom amount' do
      expect(account.balance).to eq 1000
    end
  end

  describe 'Depositing' do
    it 'adds money to my total balance' do
      expect { account.deposit(500) }.to change { account.balance }.to eq 1500
    end
  end

  describe 'Withdrawing' do
    it 'removes money from my total balance' do
      expect { account.withdraw(251) }.to change { account.balance }.to eq 749
    end
  end
end

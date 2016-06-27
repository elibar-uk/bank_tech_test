require 'account'

describe Account do
  # let(:transaction) {double(:transaction, item_line: {date: 10/12/2012, amount: 1000})}
  # let(:transaction_class) { double(:Transaction, new: transaction)}
  # subject(:account) { described_class.new(transaction: transaction_class)}
  subject(:account) { described_class.new}
  let(:date_of) {'14/12/2012'}
  let(:amount_in) {1000}
  let(:amount_out) {500}

    describe '#initialize' do
      it 'intialises with the balance' do
        expect(account.balance).to eq 0
      end
    end
    describe '#withdrawal' do
      it 'decrices the balance of the account' do
        account.withdrawal(date_of, amount_out)
        expect(account.balance).to eq -(amount_out)
      end
    end
    describe '#deposit' do
      it 'adds to the blanace of the account' do
        account.deposit(date_of, amount_in)
        expect(account.balance).to eq amount_in
      end
    end

end

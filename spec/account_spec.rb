require 'account'

describe Account do
  subject(:account) { described_class.new}
  let(:date_of) { '14/12/2012' }
  let(:amount_in) {1000}
  let(:amount_out) {500}
  let(:statement_test) {'date || credit || debit || balance\n14/12/2012 || 1000 || || 1000\n14/12/2012 ||  500 || || 500'}

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
   describe '#statement' do
     it "prints the statement" do
       expect do
        account= Account.new
        account.deposit(date_of, amount_in)
        account.withdrawal(date_of, amount_out)
        account.statement.to output(statement_test).to_stdout
       end
     end
   end
end

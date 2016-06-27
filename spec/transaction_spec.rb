require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new}
  let(:amount) { 1000.00 }
  let(:date) { '10/01/2012' }
  let(:item) { {date: date, amount: amount} }


  describe '#initialize' do
    it 'initializes with a date and amount' do
      transaction.set_item(date, amount)
      expect(transaction.item).to eq item
    end
  end
end

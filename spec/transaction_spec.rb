require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new}
  let(:amount) { 1000.00 }
  let(:date) { '10/01/2012' }
  let(:item) { {date: date, amount: amount} }
  let(:item_new) { {date: '10/01/2012', amount: 1000.00} }

  describe '#initialize' do
    it 'initializes with a date and amount' do
      transaction.set_item(date, amount)
      expect(transaction.item).to eq item
    end
  end
  describe '#set_item' do
    it 'adds the line to transaction history' do
      transaction.set_item(date, amount)
      expect(transaction.item).to eq item_new
    end
  end
end

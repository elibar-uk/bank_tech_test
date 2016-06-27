class Transaction
  attr_reader :date, :amount, :item

  def initialize
    @item = {date: nil, amount: nil}
  end

  def set_item(date, amount)
    @item[:amount] = amount
    @item[:date] = date
    # @item
  end
end

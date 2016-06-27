require_relative 'transaction'
class Account
attr_reader :balance, :transaction, :transaction_history

  def initialize(transaction= Transaction.new)
    @transaction = transaction
    @balance = 0
    @transaction_history =[]
  end

  def withdrawal(date, amount)
    line1= @transaction.set_item(date, amount)
    @balance -= @transaction.item[:amount]
    @transaction_history << line1
  end

  def deposit(date, amount)
    line = @transaction.set_item(date, amount)
    @balance += @transaction.item[:amount]
    @transaction_history << line
  end
end

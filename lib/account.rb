require_relative 'transaction'
class Account

attr_reader :balance, :transaction, :transaction_history

  def initialize(transaction= Transaction.new)
    @transaction = transaction
    @balance = 0
    @transaction_history = []
  end

  def withdrawal(date, amount)
    line1= @transaction.set_item(date, amount)
    @balance -= @transaction.item[:amount]
    line1[:balance] = @balance
    @transaction_history << line1

  end

  def deposit(date, amount)
    line = @transaction.set_item(date, amount)
    @balance += @transaction.item[:amount]
    line[:balance] = @balance
    @transaction_history << line

  end

  def statement
    puts "date || credit || debit || balance"
    self.transaction_history.each do |item| if item[:balance]<0
    puts "#{item[:date]} || || #{item[:amount]} || #{item[:balance]}"
      else
    puts "#{item[:date]} || #{item[:amount]} || || #{item[:balance]}"
      end
    end
  end
end

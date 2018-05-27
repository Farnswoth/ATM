require_relative 'config_reader'
require_relative 'banknotes_finder'
require_relative 'hash'

class ATMCore
  include ConfigReader

  attr_reader :account

  def initialize(account, password)
    @account = log_in(account, password)
    @banknotes = config['banknotes'].delete_value(0)
    @bnkts_finder = BanknotesFinder.new(@banknotes)
    @balances = {}
  end

  def balance
    if @balances[@account[:id]]
      @balances[@account[:id]]
    else
      @account['balance']
    end
  end

  def withdraw(amount)
    unless enough_money?(amount)
      UI.not_enough_money
      return nil
    end

    needed_banknotes = @bnkts_finder.banknotes_needed(amount)
    if needed_banknotes
      update_banknotes_in_atm(needed_banknotes)
      update_balance(amount)
    else
      nil
    end
  end

  def update_balance(amount)
    if @balances[@account[:id]]
      @balances[@account[:id]] - amount.to_i
    else
      new_balance = balance - amount.to_i
      @balances[@account[:id]] = new_balance
    end
  end

  def log_in(account, password)
    account = find_account(account)
    account && account['password'] == password ? account : nil
  end

  private

  def config
    ConfigReader::read
  end

  def find_account(id)
    account = config['accounts'][id.to_i]
    account.nil? ? nil : account.merge({id: id})
  end

  def enough_money?(amount)
    amount.to_i < available_money
  end

  def available_money
    money = 0
    @banknotes.inject(:+) do |results, (key, value)|
      money = money + (key * value.to_i)
    end
  end

  def update_banknotes_in_atm(to_withdraw)
    @banknotes.minus!(to_withdraw)
  end

end

require_relative 'atm_core'

class ATMachine

  def initialize
    @core = login
  end

  def login
    core = ATMCore.new(UI.account_number, UI.password)
    UI.say_hello(core.account['name'])
    core
  end

  def logout
    UI.say_good_bye(@core.account['name'])
    login
  end

  def balance
    UI.balance(@core.balance)
  end

  def withdraw
    money_to_withdraw = UI.withdraw
    if enough_money?(money_to_withdraw)
      withdraw_result = @core.withdraw(money_to_withdraw)
      if withdraw_result
        UI.balance(withdraw_result)
      else
        UI.withdraw_cannot_be_composed
        withdraw
      end
    else
      UI.error_not_enough_money
      balance
    end
  end

  private

  def enough_money?(money_to_withdraw)
    money_to_withdraw < @core.balance
  end

end

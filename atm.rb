require_relative 'lib/atmachine'
require_relative 'lib/ui'
require 'pry'

atm = ATMachine.new

loop do
  case UI.command
    when '1'
      atm.balance
    when '2'
      atm.withdraw
    when '3'
      atm.logout
    else
      puts 'Invalid command'
  end
end

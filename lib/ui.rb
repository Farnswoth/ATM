class UI
  class << self

    def account_number
      puts "\n Please Enter Your Account Number:"
      input
    end

    def password
      puts "Enter Your Password:"
      input
    end

    def menu
      puts "\n Please Choose From the Following Options:
               1. Display Balance
               2. Withdraw
               3. Log Out"
    end

    def say_hello(name)
      puts "\n Hello, #{name}!"
    end

    def say_good_bye(name)
      puts "\n #{name}, Thank You For Using Our ATM. Good-Bye!"
    end

    def balance(value)
      puts "\n Your Current Balance is ₴#{value}"
    end

    def not_enough_money
      "\n ERROR: INSUFFICIENT FUNDS!! PLEASE ENTER A DIFFERENT AMOUNT:"
    end

    def maximum_available(amount)
      puts "\n ERROR: THE MAXIMUM AMOUNT AVAILABLE IN THIS ATM IS ₴#{amount}. PLEASE ENTER A DIFFERENT AMOUNT:"
    end

    def withdraw
      puts "\n Enter Amount You Wish to Withdraw:"
      input.to_i
    end

    def withdraw_cannot_be_composed
      puts "\n ERROR: THE AMOUNT YOU REQUESTED CANNOT BE COMPOSED FROM BILLS AVAILABLE IN THIS ATM. PLEASE ENTER A DIFFERENT AMOUNT:"
    end

    def error_cannot_be_composed
      puts "\n ERROR: THE AMOUNT YOU REQUESTED CANNOT BE COMPOSED FROM BILLS AVAILABLE IN THIS ATM. PLEASE ENTER A DIFFERENT AMOUNT:"
      input
    end

    def error_not_enough_money
      puts "\n ERROR: THE AMOUNT YOU REQUESTED CANNOT BE COMPOSED NOT ENOUGH MONEY. PLEASE TRY AGAIN with DIFFERENT AMOUNT"
    end

    def command
      menu
      input
    end

    private

    def input
      STDIN.gets.chomp
    end
  end
end
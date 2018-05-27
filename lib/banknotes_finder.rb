class BanknotesFinder

  def initialize(banknotes)
    @banknotes = banknotes
  end

  def sum_1
    {1 => 1}
  end

  def sum_2
    banknotes_available?({2 => 1}) ||
        banknotes_available?({1 => 2})
  end

  def sum_3
    banknotes_available?({2 => 1, 1 => 1}) ||
        banknotes_available?({1 => 3})
  end

  def sum_4
    banknotes_available?({2 => 2}) ||
        banknotes_available?({2 => 1, 1 => 2}) ||
        banknotes_available?({1 => 4})
  end

  def sum_5
    banknotes_available?({5 => 1}) ||
        banknotes_available?({2 => 2, 1 => 1}) ||
        banknotes_available?({2 => 1, 1 => 3}) ||
        banknotes_available?({1 => 5})
  end

  def sum_6
    banknotes_available?({5 => 1, 1 => 1}) ||
        banknotes_available?({2 => 3}) ||
        banknotes_available?({2 => 2, 1 => 2}) ||
        banknotes_available?({1 => 6})
  end

  def sum_7
    banknotes_available?({5 => 1, 2 => 1}) ||
        banknotes_available?({2 => 3, 1 => 1}) ||
        banknotes_available?({2 => 2, 1 => 3}) ||
        banknotes_available?({5 => 1, 1 => 2}) ||
        banknotes_available?({1 => 7})
  end

  def sum_8
    banknotes_available?(5 => 1, 2 => 1, 1 => 1) ||
        banknotes_available?({5 => 1, 1 => 3}) ||
        banknotes_available?({2 => 4}) ||
        banknotes_available?({2 => 3, 1 => 2}) ||
        banknotes_available?({1 => 8})
  end

  def sum_9
    banknotes_available?({5 => 1, 2 => 2}) ||
        banknotes_available?({5 => 1, 2 => 1, 1 => 2}) ||
        banknotes_available?({2 => 4, 1 => 1}) ||
        banknotes_available?({2 => 3, 1 => 3}) ||
        banknotes_available?({2 => 2, 1 => 5}) ||
        banknotes_available?({2 => 1, 1 => 7}) ||
        banknotes_available?({1 => 9})
  end

  def sum_10
    banknotes_available?({10 => 1}) ||
        banknotes_available?({5 => 2}) ||
        banknotes_available?({5 => 1, 2 => 2, 1 => 1}) ||
        banknotes_available?({5 => 1, 2 => 1, 1 => 3}) ||
        banknotes_available?({5 => 1, 1 => 5}) ||
        banknotes_available?({2 => 5}) ||
        banknotes_available?({2 => 4, 1 => 2}) ||
        banknotes_available?({2 => 3, 1 => 4}) ||
        banknotes_available?({2 => 2, 1 => 6}) ||
        banknotes_available?({2 => 1, 1 => 8}) ||
        banknotes_available?({1 => 10})
  end

  def sum_20
    banknotes_available?({20 => 1}) ||
        banknotes_available?({10 => 2}) ||
        banknotes_available?({5 => 4}) ||
        banknotes_available?({2 => 10}) ||
        banknotes_available?({5 => 3, 2 => 2, 1 => 1}) ||
        banknotes_available?({5 => 2, 2 => 5})
  end

  def sum_30
    banknotes_available?({20 => 1, 10 => 1}) ||
        banknotes_available?({10 => 3}) ||
        banknotes_available?({5 => 6}) ||
        banknotes_available?({2 => 15}) ||
        banknotes_available?({5 => 5, 2 => 2, 1 => 1}) ||
        banknotes_available?({5 => 2, 2 => 5})
  end

  def sum_40
    banknotes_available?({20 => 2}) ||
        banknotes_available?({20 => 1, 10 => 3}) ||
        banknotes_available?({10 => 4}) ||
        banknotes_available?({5 => 8})
  end

  def sum_50
    banknotes_available?({50 => 1}) ||
        banknotes_available?({20 => 2, 10 => 1}) ||
        banknotes_available?({20 => 1, 10 => 3}) ||
        banknotes_available?({10 => 5}) ||
        banknotes_available?({5 => 10})
  end

  def sum_60
    banknotes_available?({50 => 1, 10 => 1}) ||
        banknotes_available?({20 => 3}) ||
        banknotes_available?({20 => 2, 10 => 2}) ||
        banknotes_available?({20 => 1, 10 => 4}) ||
        banknotes_available?({10 => 6}) ||
        banknotes_available?({5 => 12})
  end


  def sum_70
    banknotes_available?({50 => 1, 20 => 1}) ||
        banknotes_available?({50 => 1, 10 => 2}) ||
        banknotes_available?({50 => 1, 5 => 4}) ||
        banknotes_available?({20 => 3, 10 => 1}) ||
        banknotes_available?({20 => 3, 5 => 2}) ||
        banknotes_available?({20 => 2, 10 => 3}) ||
        banknotes_available?({20 => 1, 10 => 5}) ||
        banknotes_available?({10 => 7}) ||
        banknotes_available?({5 => 14})
  end

  def sum_80
    banknotes_available?({50 => 1, 20 => 1, 10 => 1}) ||
        banknotes_available?({20 => 4}) ||
        banknotes_available?({10 => 8}) ||
        banknotes_available?({5 => 16})
  end

  def sum_90
    banknotes_available?({50 => 1, 20 => 2}) ||
        banknotes_available?({10 => 9}) ||
        banknotes_available?({5 => 18})
  end

  def sum_100
    banknotes_available?({100 => 1}) ||
        banknotes_available?({50 => 2}) ||
        banknotes_available?({20 => 5}) ||
        banknotes_available?({10 => 10})
  end

  def sum_200
    banknotes_available?({200 => 1}) ||
        banknotes_available?({100 => 2}) ||
        banknotes_available?({50 => 4}) ||
        banknotes_available?({20 => 10}) ||
        banknotes_available?({10 => 20})
  end

  def sum_300
    banknotes_available?({200 => 1, 100 => 1}) ||
        banknotes_available?({100 => 3}) ||
        banknotes_available?({50 => 6}) ||
        banknotes_available?({20 => 15}) ||
        banknotes_available?({10 => 30})
  end

  def sum_400
    banknotes_available?({200 => 2}) ||
        banknotes_available?({200 => 1, 100 => 2}) ||
        banknotes_available?({100 => 4}) ||
        banknotes_available?({50 => 8}) ||
        banknotes_available?({10 => 40})
  end

  def sum_500
    banknotes_available?({500 => 1}) ||
        banknotes_available?({200 => 2, 100 => 1}) ||
        banknotes_available?({200 => 1, 100 => 3}) ||
        banknotes_available?({100 => 5}) ||
        banknotes_available?({50 => 10}) ||
        banknotes_available?({20 => 25})
  end

  def sum_600
    banknotes_available?({500 => 1, 100 => 1}) ||
        banknotes_available?({200 => 3}) ||
        banknotes_available?({100 => 6}) ||
        banknotes_available?({50 => 12}) ||
        banknotes_available?({10 => 60})
  end

  def sum_700
    banknotes_available?({500 => 1, 200 => 1}) ||
        banknotes_available?({500 => 1, 100 => 2}) ||
        banknotes_available?({200 => 3, 100 => 1}) ||
        banknotes_available?({100 => 7}) ||
        banknotes_available?({50 => 14}) ||
        banknotes_available?({10 => 70})
  end

  def sum_800
    banknotes_available?({500 => 1, 200 => 1}) ||
        banknotes_available?({500 => 1, 100 => 2}) ||
        banknotes_available?({200 => 3, 100 => 1}) ||
        banknotes_available?({100 => 7}) ||
        banknotes_available?({50 => 14}) ||
        banknotes_available?({10 => 70})
  end

  def sum_900
    banknotes_available?({500 => 1, 200 => 2}) ||
        banknotes_available?({500 => 1, 200 => 1, 100 => 2}) ||
        banknotes_available?({200 => 4, 100 => 1}) ||
        banknotes_available?({100 => 9}) ||
        banknotes_available?({50 => 18}) ||
        banknotes_available?({10 => 90})
  end


  def sum_1000
    banknotes_available?({500 => 2}) ||
        banknotes_available?({500 => 1, 200 => 2, 100 => 1}) ||
        banknotes_available?({200 => 3, 100 => 1}) ||
        banknotes_available?({100 => 10}) ||
        banknotes_available?({50 => 20}) ||
        banknotes_available?({10 => 100})
  end

  def thousands(amount)
    h = {}
    amount.times do
      h.plus!(sum_1000)
    end
    h
  end


  #if available returns needed banknotes
  def banknotes_available?(needed)
    needed.each do |key, value|
      if @banknotes[key]
        needed = nil if @banknotes[key] < value
      else
        needed = nil
      end
    end
    needed
  end

  #converts ex. 358 to [300, 50, 8]
  def convert_to_sums(money)
    sums = money.to_s.split('').reverse.each_with_index.map {|x, index| x.to_i * (10 ** index)}
    sums.delete(0)
    sums
  end

  #adds all banknotes needed for all sums
  def banknotes_needed(money)
    banknotes = {}
    sums = convert_to_sums(money)
    sums.each do |sum|
      banknotes_needed = select_method(sum)
      return nil unless banknotes_needed
      banknotes.plus!(banknotes_needed)
    end
    banknotes
  end

  def select_method(sum)
    if sum.to_i > 1000
      send(:thousands, {sum: sum})
    else
      send("sum_#{sum}")
    end
  end
end

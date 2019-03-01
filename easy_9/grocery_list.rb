# grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit

def buy_fruit(ar)
  ar.inject([]) do |memo, ar_el|
    ar_el[1].times {|_| memo << ar_el[0]}
    memo
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
    ["apples", "apples", "apples", "orange", "bananas","bananas"]

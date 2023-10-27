require 'pry-byebug'
# def stock_picker(array)
#     price_to_buy = array[0]
#     price_to_sell = array[1]
#     day_to_buy = 0
#     day_to_sell = 1
# index = 0
# ##binding.pry
# while index < array.length
#     price = array[index]
#     if price < price_to_buy && index < array.length - 1 && day_to_buy < day_to_sell
#         price_to_buy = price
#         day_to_buy = index
#     elsif price > price_to_sell && index > 0
#         price_to_sell = price
#         day_to_sell = index
#     end
# index += 1
# end
# days_array = [day_to_buy, day_to_sell]
# puts days_array
# end
def stock_picker(array)
    minimum_three = array.min(3)
    maximum_three = array.max(3)
    if array.index(minimum_three[0]) < array.index(maximum_three[0])
        days_array = [array.index(minimum_three[0]), array.index(maximum_three[0])]
    elsif array.index(minimum_three[1]) < array.index(maximum_three[0])
        days_array = [array.index(minimum_three[1]), array.index(maximum_three[0])]
    elsif array.index(minimum_three[2]) < array.index(maximum_three[0])
        days_array = [array.index(minimum_three[2]), array.index(maximum_three[0])]
    elsif array.index(minimum_three[0]) < array.index(maximum_three[1])
        days_array = [array.index(minimum_three[0]), array.index(maximum_three[1])]
    elsif array.index(minimum_three[1]) < array.index(maximum_three[1])
        days_array = [array.index(minimum_three[1]), array.index(maximum_three[1])]
    elsif array.index(minimum_three[2]) < array.index(maximum_three[1])
        days_array = [array.index(minimum_three[2]), array.index(maximum_three[1])]
    elsif array.index(minimum_three[2]) < array.index(maximum_three[0])
        days_array = [array.index(minimum_three[2]), array.index(maximum_three[0])]
    elsif array.index(minimum_three[2]) < array.index(maximum_three[1])
        days_array = [array.index(minimum_three[2]), array.index(maximum_three[1])]
    elsif array.index(minimum_three[2]) < array.index(maximum_three[2])
        days_array = [array.index(minimum_three[2]), array.index(maximum_three[2])]
    end
    p days_array
end


price_array1 = [17, 3, 6, 9, 15, 8, 6, 1, 10]
price_array2 = [6, 1, 19, 8, 7, 9, 4, 2, 5, 8, 0]

stock_picker(price_array1)
stock_picker(price_array2)

class String
  define_method(:scrabble_score) do
    two_point = ["d","g"]
    three_point = ["b","c","m","p"]
    four_point = ["f","h","v","w","y"]
    five_point = ["k"]
    eight_point = ["j","x"]
    ten_point = ["q","z"]
    if two_point.include?(self)
      2
    elsif three_point.include?(self)
      3
    elsif four_point.include?(self)
      4
    elsif five_point.include?(self)
      5
    elsif eight_point.include?(self)
      8
    elsif ten_point.include?(self)
      10
    else
      1
    end
  end
end

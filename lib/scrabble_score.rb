class String
  define_method(:scrabble_score) do
    self.downcase!()
    two_point = ["d","g"]
    three_point = ["b","c","m","p"]
    four_point = ["f","h","v","w","y"]
    five_point = ["k"]
    eight_point = ["j","x"]
    ten_point = ["q","z"]
    letters = self.split("")
    score = 0
    letters.each do |letter|
      if two_point.include?(letter)
        score = score.+(2)
      elsif three_point.include?(letter)
        score = score.+(3)
      elsif four_point.include?(letter)
        score = score.+(4)
      elsif five_point.include?(letter)
        score = score.+(5)
      elsif eight_point.include?(letter)
        score = score.+(8)
      elsif ten_point.include?(letter)
        score = score.+(10)
      else
        score = score.+(1)
      end
    end
    score
  end
end

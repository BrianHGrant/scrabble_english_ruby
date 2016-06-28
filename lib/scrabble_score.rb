class String
  define_method(:scrabble_score) do
    two_point = ["d","g"]
    if two_point.include?(self)
      2
    else
      1
    end
  end
end

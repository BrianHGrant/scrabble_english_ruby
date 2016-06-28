require ('rspec')
require ('scrabble_score.rb')

describe('String#scrabble_score') do
  it("returns a scrabble score for a letter") do
    expect("a".scrabble_score()).to(eq(1))
  end
  it("returns a scrabble score of 2 for letters D or G") do
    expect("d".scrabble_score()).to(eq(2))
  end
  it("returns a scrabble score of 3 for letters B, C, M, P ") do
    expect("b".scrabble_score()).to(eq(3))
  end
  it("returns a scrabble score of 4 for letters F, H, V, W, Y  ") do
    expect("f".scrabble_score()).to(eq(4))
  end
  it("returns a scrabble score of 5 for letter K") do
    expect("k".scrabble_score()).to(eq(5))
  end
  it("returns a scrabble score of 8 for letters J, X") do
    expect("j".scrabble_score()).to(eq(8))
  end
  it("returns a scrabble score of 10 for letters Q, Z") do
    expect("q".scrabble_score()).to(eq(10))
  end
end

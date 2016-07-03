require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score')
require('./lib/english_verify')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/score') do
  @word = params.fetch('word')
  @verified_word = params.fetch('word').english_verify?()
  if @verified_word == true
    @score = params.fetch('word').scrabble_score()
    erb(:score)
  else
    @message = "Your word: " + @word + " is not in the English language"
    erb(:index)
  end
end

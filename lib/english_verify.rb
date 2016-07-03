class String
  define_method(:english_verify?) do
    dictionary_open = File.open('words/en.txt')
    dictionary_english = dictionary_open.readlines
    dictionary_english.map! {|word| word.chomp }
    if dictionary_english.include?(self.downcase)
      true
    else
      false
    end
  end
end

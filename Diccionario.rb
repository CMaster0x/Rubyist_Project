class Dictionary
  @@colection = {}
  @@words = []
  @@total_count = 0
  attr_reader :word

  def self.total_count
    @@total_count
  end

  def self.add_word(word)
    unless @@words.include?(word)
      @@words << word
      @@colection[word] = 0
    end
  end

  def initialize(word)
    if @@words.include?(word)
      puts "Adding a new word #{word}"
      @word = word
      @@colection[word] += 1
      @@total_count += 1
    else raise "No such word: #{word}"
    end
  end
  def make_mates
    @@collection[self.word]
  end
end


Dictionary.add_word("Hermoso")
diccionario = Dictionary.new("Hermoso")

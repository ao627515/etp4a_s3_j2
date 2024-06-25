def word_counter(text, dictionary)
    word_counts = Hash.new(0)
    text.downcase.split(/[^a-z]/).each do |word|
      dictionary.each do |dict_word|
        if word.include?(dict_word)
          word_counts[dict_word] += 1
        end
      end
    end
    word_counts
  end
  
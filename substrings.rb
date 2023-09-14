DICTIONARY = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(phrase="Nothing to see here", dictionary = DICTIONARY)
  dictionary.reduce(Hash.new(0)) do |hs, word_in_dict|

    phrase.split.each do |word_in_phrase|
      if word_in_phrase.downcase.include? word_in_dict
        hs[word_in_dict] += 1
      end
    end

    hs
  end
end

puts substrings("Howdy partner, sit down! How's it going?")

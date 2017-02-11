dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(words, dictionary)
  result = Hash.new(0)
  words_arr = words.downcase.split(" ")
  words_arr.each do |word|
    dictionary.each do |i|
      result[i] += 1 if word[i]
    end
  end
  result
end

print substrings("Howdy partner, sit down! How's it going?", dictionary)

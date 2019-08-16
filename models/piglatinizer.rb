class PigLatinizer

  def is_vowel?(word)
    vowels = 'aeiouAEIOU'
    vowels.include?(word[0])
  end

  def piglatinize(word)
    if !is_vowel?(word[0])
     word = word + "w"

   elsif is_vowel?(word[0]) && is_vowel?(word[1]) && is_vowel?(word[2])
       word = word.slice(3..-1) + word.slice(0,3)

     elsif is_vowel?(word[0]) && is_vowel?(word[1])
       word = word.slice(2..-1) + word.slice(0,2)

     else
       word = word.slice(1..-1) + word.slice(0)
     end
     word << "ay"
  end

  def to_pig_latin(phrase)
    phrase.split.collect {|word| piglatinize(word)}.join(' ')
  end

  def piglatinize_sentence(sentence)
   sentence.split.collect { |word| piglatinize(word) }.join(" ")
 end
end

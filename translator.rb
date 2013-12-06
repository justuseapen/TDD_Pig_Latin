require 'pry'

class Translator
	def initialize(word_or_phrase)
		if word_or_phrase.split.length > 1
			@phrase = word_or_phrase
		elsif word_or_phrase.split.length == 1
			@word = word_or_phrase
		else
			raise "You must input some words to be translated."
		end
	end

	def words
		if @phrase != nil
			@phrase.split
		else
			@word.split
		end
	end

	def letters(word)
		word.split""
	end

	def is_vowel?(l)
		if l.downcase == "a"
			return true
		elsif l.downcase == "e"
			return true
		elsif l.downcase == "i"
			return true
		elsif l.downcase == "o"
			return true
		elsif l.downcase == "u"
			return true
		end
	end

	def translate_word(word = @word)
			if is_vowel?(word[0]) == true
				word + "way"
			else
				push_to_back = []
				letters(word).each do |l|
					break if is_vowel?(l)
					push_to_back << l.downcase
				end
				new_word = word[push_to_back.length,word.size-1]
				new_word = new_word + push_to_back.join
				new_word + "ay"
			end
	end

	def translate_phrase
		new_phrase = []
		words.each do |word|
			new_phrase << translate_word(word)
		end
		new_phrase.join" ".capitalize

		#break phrase into words
		#analyze words for vowels
		#if first letter is vowel, add 'way'
		#else 'take all letters until first vowel and put at end of word'
		#
	end

end
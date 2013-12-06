require_relative 'translator'
require_relative 'word'
require_relative 'phrase'

describe Translator do 
	# it "translates english into pig latin" do
	# 	phrase = Translator.new("This is a test phrase.")
	# 	expect(phrase.translate).to eql("Isthay isway away estay rasephray.")
	# end

	# it "splits the phrase into words" do
	# 	phrase = Translator.new("This is another test phrase.")
	# 	expect(phrase.)		
	# end
	it 'translates a word that starts with a vowel' do
		word = Translator.new("another")
		expect(word.translate_word).to eql("anotherway")
	end

	it 'translates a word that starts with a consonant' do
		word = Translator.new("zoo")
		expect(word.translate_word).to eql("oozay")
	end

	it 'translates a phrase that is provided' do
		phrase = Translator.new("dieu et les dames")
		expect(phrase.translate_phrase).to eql("ieuday etway eslay amesday")
	end
end
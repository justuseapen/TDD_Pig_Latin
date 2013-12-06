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
		expect(word.translate).to eql("anotherway")
	end

	it 'translates a word that starts with a consonant' do
		word = Translator.new("zoo")
		expect(word.translate).to eql("oozay")
	end

	it 'translates a phrase that is provided' do
		phrase = Translator.new("Dieu et les dames")
		expect(phrase.translate).to eql("Ieuday etway eslay amesday")
	end

	it 'only accepts alphabetical characters and punctuation' do
		expect Translator.new("1nv4lid Phr4$e").to raise_error
	end

	it 'returns nil if no vowels are found in phrase' do
		expect Translator.new("thr r n vwls n ths phrs").to raise_error
	end

	it 'preserves punctuation' do
		phrase = Translator.new("This is a test phrase.")
		expect(phrase.translate).to eql("Isthay isway away estay rasephray.")
	end
end
require_relative 'translator'

describe Translator do 
	it "translates english into pig latin" do
		translation = Translator.new("This is a test phrase.")
		expect(translation.translate).to eql("Isthay isway away estay rasephray.")
	end
end
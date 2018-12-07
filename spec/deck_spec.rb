require "./lib/deck.rb"

describe "Poker Deck" do

	# Usar la URI: "https://deckofcardsapi.com/static/img/??.svg"
	# donde ?? es lo que devuelve card_image

	it "As de corazones" do
		expect( card_image(1) ).to eq "AH"
	end

	it "As de trebol" do
		expect( card_image(14) ).to eq "AC"
	end

	it "As de picas" do
		expect( card_image(27) ).to eq "AS"
	end

	it "As de diamantes" do
		expect( card_image(40) ).to eq "AD"
	end

	it "5 de corazones" do
		expect( card_image(5) ).to eq "5H"
	end

	it "10 de corazones" do
		expect( card_image(10) ).to eq "0H"
	end

	it "Q de corazones" do
		expect( card_image(12) ).to eq "QH"
	end

	it "J de corazones" do
		expect( card_image(11) ).to eq "JH"
	end

	it "K de trebol" do
		expect( card_image(26) ).to eq "KC"
	end

end


def card_image index
	# Order Hearts, Clubs, Spades, Diamonds
	color = (index/13).floor
	number = index - (color * 13)
	if number == 0
		number = 13
		color -= 1
	end
	figure = %w{H C S D}[color]

	if number == 1
		id = "A"
	elsif number == 10
		id = "0"
	elsif number == 11
		id = "J"
	elsif number == 12
		id = "Q"
	elsif number == 13
		id = "K"
	else
		id = number.to_s
	end

	return "#{id}#{figure}"
end


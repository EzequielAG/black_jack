Given(/^abro pagina inicio$/) do
	visit '/'
end

Then(/^debo ver "(.*?)"$/) do |este_texto|
  last_response.body.should =~ /#{este_texto}/m
end


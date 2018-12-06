require 'sinatra'

get '/' do
    erb :inicio
end

get '/pedir' do
	"#carta"
end

get '/plantarse' do
	"#plantado"
end


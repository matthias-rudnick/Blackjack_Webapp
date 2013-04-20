#encoding: utf-8
require 'rubygems'
require 'sinatra'

set :sessions, true



get '/' do
	erb :game
end

post '/new_game' do
	puts params.inspect
end

get '/new_player' do
	if params.include?(:username)
		redirect ('/welcome_player')
	else
		erb :new_player
	end
end

post '/new_player' do
	erb :welcome_player
end

#encoding: utf-8
require 'rubygems'
require 'sinatra'

set :sessions, true



get '/' do
	erb :game
end

post '/new_game' do
	if params[:game]== "no"
		erb :no_game
	else
		erb :new_player
	end
end

get ('/new_player') do
	erb :new_player
end

post '/new_player' do
	if params[:username].empty?
		redirect '/new_player'
	else
		erb :new_game
	end
end

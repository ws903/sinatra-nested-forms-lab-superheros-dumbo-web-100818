require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
    	erb :super_hero
    end

    post '/teams' do
    	params["team"]["members"].map { |member|
    		Hero.new(name: member[:name], power: member[:power], biography: member[:biography])
    	}

    	@team = Team.new(name: params["team"]["name"], motto: params["team"]["motto"])
    	@heroes = Hero.all
    	erb :team
    end
end

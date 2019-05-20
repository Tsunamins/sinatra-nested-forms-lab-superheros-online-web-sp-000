require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :super_hero
    end 
    
    post '/teams' do 
     
     @team_name = params["team"]["name"]
     @team_motto = params["team"]["motto"]
     @team_members = params["team"]["members"]
     
    @team_members.each do |key, value| 
      @hero_names = [:hero_name]
      
     
       
     
     
      
            
      #   @ = Pirate.new(params[:pirate])

      # params[:pirate][:ships].each do |details|
      #   Ship.new(details)
      # end
      # @ships = Ship.all
      
      erb :team
      
    end 

end

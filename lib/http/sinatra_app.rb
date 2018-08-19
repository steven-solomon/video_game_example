require 'sinatra'
require 'json'

video_games = []

get '/all_video_games' do
  content_type :json

  [200, video_games.to_json]
end

post '/save_video_game' do
  game_to_add = JSON.parse(request.body.read)
  video_games << game_to_add
  puts "Saved #{game_to_add}"
  status 201
end

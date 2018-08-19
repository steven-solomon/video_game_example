require 'httparty'

class HttpVideoGameService
  def all_video_games
    JSON.parse(
      HTTParty.get('http://localhost:4567/all_video_games').body
    ).map do |d|
      VideoGame.new(d['name'])
    end
  end

  def save(video_game)
    HTTParty.post(
      'http://localhost:4567/save_video_game',
      {
        body: { name: video_game.name }.to_json,
        headers: { 'Content-Type' => 'application/json' }
      }
    )
  end
end

class InMemoryVideoGameService
  def initialize
    @video_games = []
  end

  def all_video_games
    @video_games
  end

  def save(video_game)
    @video_games << video_game
  end
end

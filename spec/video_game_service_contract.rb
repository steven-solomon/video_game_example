shared_examples 'VideoGameService Contract' do
  it 'should have no video games by default' do
    expect(video_game_service.all_video_games.size).to eq(0)
  end

  it 'should save video game' do
    video_game_service.save(VideoGame.new('E.T. for NES'))

    expect(video_game_service.all_video_games.size).to eq(1)
    expect(video_game_service.all_video_games.first).to eq(VideoGame.new('E.T. for NES'))
  end
end

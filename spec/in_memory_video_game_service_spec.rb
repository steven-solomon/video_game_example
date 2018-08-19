require 'spec_helper'
require 'in_memory_video_game_service'
require 'video_game'
require 'video_game_service_contract'

describe InMemoryVideoGameService do
  it_behaves_like 'VideoGameService Contract'

  let(:video_game_service) {InMemoryVideoGameService.new}
end

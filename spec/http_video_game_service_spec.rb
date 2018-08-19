require 'spec_helper'
require 'http_video_game_service'
require 'video_game'
require 'httparty'
require 'video_game_service_contract'

describe HttpVideoGameService do
  # Setup is omitted from blog post as it is not relevant to the contract pattern
  before do
    @pid = Process.fork do
      $stdout.reopen('lib/http/logs/out.txt', 'w')
      $stderr.reopen('lib/http/logs/err.txt', 'w')
      exec 'ruby lib/http/sinatra_app.rb'
    end
    sleep 1
  end

  after do
    Process.kill 'QUIT', @pid
    sleep 1
  end

  let(:video_game_service) {HttpVideoGameService.new}

  it_behaves_like 'VideoGameService Contract'
end

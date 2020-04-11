require 'minitest/autorun'
require 'minitest/pride'
require 'CSV'
require './lib/game_teams'
require './lib/team'
require './lib/game'
require './lib/team_repository'
require "./lib/game_teams_repository"


class GameTeamsRepositoryTest < Minitest::Test
  def test_it_exists
    game_team_repository = GameTeamsRepository.new('./data/games.csv', './data/game_teams.csv')
    assert_instance_of GameTeamsRepository, game_team_repository
  end

  def test_most_tackles
    game_team_repository = GameTeamsRepository.new('./data/games.csv', './data/game_teams.csv')
    assert_equal "FC Cincinnati", game_team_repository.most_tackles("20132014")
    assert_equal "Seattle Sounders FC", game_team_repository.most_tackles("20142015")
  end
end

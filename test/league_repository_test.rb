require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'CSV'
require './lib/league_repository'
require './lib/game'
require './lib/team'
require './lib/game_teams'

class LeagueRepositoryTest < Minitest::Test

  def test_it_exists
    league = LeagueRepository.new('./data/games.csv', './data/game_teams.csv', './data/teams.csv')
    assert_instance_of LeagueRepository, league
  end

  def test_count_of_teams
    league = LeagueRepository.new('./data/games.csv', './data/game_teams.csv', './data/teams.csv')
    assert_equal 32, league.count_of_teams
  end

  def test_best_offense
    league = LeagueRepository.new('./data/games.csv', './data/game_teams.csv', './data/teams.csv')
    assert_equal "Reign FC", league.best_offense
  end

  def test_find_team_name
    league = LeagueRepository.new('./data/games.csv', './data/game_teams.csv', './data/teams.csv')
    assert_equal "Orlando City SC", league.find_team_id(30)
  end

  def test_worst_offense
    league = LeagueRepository.new('./data/games.csv', './data/game_teams.csv', './data/teams.csv')
    assert_equal "Utah Royals FC", league.worst_offense
  end

  def test_highest_scoring_visitor
    league = LeagueRepository.new('./data/games.csv', './data/game_teams.csv', './data/teams.csv')
    assert_equal "FC Dallas", league.highest_scoring_visitor
  end

  def test_lowest_scoring_visitor
    league = LeagueRepository.new('./data/games.csv', './data/game_teams.csv', './data/teams.csv')
    assert_equal "San Jose Earthquakes", league.lowest_scoring_visitor
  end

  def test_highest_scoring_home_team
    league = LeagueRepository.new('./data/games.csv', './data/game_teams.csv', './data/teams.csv')
    assert_equal "Reign FC", league.highest_scoring_home_team
  end

  def test_lowest_scoring_home_team
    league = LeagueRepository.new('./data/games.csv', './data/game_teams.csv', './data/teams.csv')
    assert_equal "Utah Royals FC", league.lowest_scoring_home_team
  end

  def test_find_team_id
    league = LeagueRepository.new('./data/games.csv', './data/game_teams.csv', './data/teams.csv')
    assert_equal "FC Cincinnati", league.find_team_id(26)
  end

end

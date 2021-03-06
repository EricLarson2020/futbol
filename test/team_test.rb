require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'CSV'
require './lib/team'

class TeamTest < Minitest::Test


  def test_it_exists
    team = Team.new({team_id: 123, franchiseid: 456, teamname: "Rockets",
      abbreviation: "RO", stadium: "Rocket Stadium", link: "link" })
    assert_instance_of Team, team
  end

  def test_it_has_attributes
    team = Team.new({team_id: 123, franchiseid: 456, teamname: "Rockets",
      abbreviation: "RO", stadium: "Rocket Stadium", link: "link" })
    assert_equal 123, team.team_id
    assert_equal 456, team.franchiseid
    assert_equal "Rockets", team.teamname
    assert_equal "RO", team.abbreviation
    assert_equal "Rocket Stadium", team.stadium
    assert_equal "link", team.link
  end

end

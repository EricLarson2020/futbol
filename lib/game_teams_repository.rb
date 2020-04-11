require_relative './csv_helper_file'
#potental for destroy later, if not found useful
class GameTeamsRepository

  attr_reader :games_collection, :game_teams_collection
  def initialize(game_path, game_team_path)
    @games_collection = CsvHelper.generate_game_array(game_path)
    @game_teams_collection = CsvHelper.generate_game_teams_array(game_team_path)
  end

  def most_tackles(season_id)
    games_in_the_season = []
    highest_tackles = 0
    highest_team_id = 0
    @games_collection.each do |game|
      if game.season == season_id
        games_in_the_season << game.game_id
      end
    end
    # require "pry"; binding.pry
    games_in_the_season.each do |season_game|
      @game_teams_collection.each do |game_team|
        if game_team.game_id == season_game
          if game_team.tackles > highest_tackles
            # require "pry"; binding.pry
            highest_tackles = game_team.tackles
            highest_team_id = game_team.team_id
          end
        end
      end
    end
    # find_team_id(highest_team_id)
    highest_team_id
  end

end

require_relative './csv_helper_file'

class GameTeamsRepository

  attr_reader :game_teams_collection
  def initialize(file_path)
    @game_teams_collection = CsvHelper.generate_game_teams_array(file_path)

  end



end
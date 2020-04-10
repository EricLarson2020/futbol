class Team

  attr_reader :team_id, :franchiseid, :teamname, :abbreviation, :stadium, :link
  def initialize(info)
    @team_id = info[:team_id].to_i
    @franchiseid = info[:franchiseid].to_i
    @teamname = info[:teamname]
    @abbreviation = info[:abbreviation]
    @stadium = info[:stadium]
    @link = info[:link]
  end


end

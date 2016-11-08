#
class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to teams_path
    else
      redirect_to new_team_path
    end
  end

  def team_params
    params.require(:team).permit(:squad_name)
  end
end

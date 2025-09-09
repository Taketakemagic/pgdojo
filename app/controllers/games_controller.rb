class GamesController < ApplicationController
  def index
    @questions = Question.where(language_id: params[:game_id]).sample(10)
  end
end

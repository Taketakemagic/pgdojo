class GamesController < ApplicationController
  def index
    @questions = Question.where(language_id: params[:gaame_id]).sample(3)
  end
end

class ResultController < ApplicationController
  def index
    @score = params[:score].to_i
    @clear_time = params[:clear_time].to_i
    @miss_count = params[:miss_count].to_i
    @correct_count = params[:correct_count].to_i
    @top_scores = Score.order(score: :desc).limit(10)
  end


  def create
    base_score = 1000
    miss_data = JSON.parse(params[:miss_data])
    correct_count = 10 - miss_data.values.sum
    miss_penalty = miss_data.values.sum * 50
    accuracy_bonus = correct_count * 20
    speed_bonus = [300 - params[:duration].to_i, 0].max * 2
    score = base_score - miss_penalty + accuracy_bonus + speed_bonus

    Score.create!(
      user_name: "ゲスト",
      clear_time: params[:duration],
      miss_count: miss_data.values.sum,
      score: score
    )

    redirect_to result_path(
      score: score,
      clear_time: params[:duration],
      miss_count: miss_data.values.sum,
      correct_count: correct_count
    )
  end



end

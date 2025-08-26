class ResultController < ApplicationController
  def index
    @duration = params[:duration]
    @misses = params[:misses]
  end

  def create
    duration = params[:duration].to_i
    miss_data = JSON.parse(params[:miss_data])

    @total_misses = miss_data.values.sum
    @duration = duration
    @miss_breakdown = miss_data

    # 必要なら Result モデルに保存して result.id を取得
    # result = Result.create!(duration: @duration, misses: @total_misses, breakdown: miss_data)
    # redirect_to result_path(result)

    redirect_to result_path(id: 1, duration: @duration, misses: @total_misses)
  end


end

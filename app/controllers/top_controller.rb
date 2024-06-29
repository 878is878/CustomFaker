class TopController < ApplicationController

  def index
    @text = Talk.order(created_at: :desc).first
    if @text.nil?
      @logs = Talk.order(created_at: :desc)
    else
      @logs = Talk.where.not(id: @text.id).order(created_at: :desc)
    end
  end

  def create
    @create = Talk.new(feeling: rand(1..3),
              contents: Faker::RandomTales.title + Faker::RandomTales.particle + Faker::RandomTales.predicate
            )
    if @create.save
    redirect_to root_path
    else
     render :top 
    end
  end

  def destroy_all
    Talk.destroy_all
    redirect_to root_path, status: :see_other
  end
end

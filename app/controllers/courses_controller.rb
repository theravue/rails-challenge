class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.includes(:assignments, :lessons).find(params[:id])
  end
end

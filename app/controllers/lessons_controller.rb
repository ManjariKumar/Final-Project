class LessonsController < ApplicationController

load_and_authorize_resource

before_action :authenticate_user!, only: [:new, :create, :update, :delete]


  def index
    @lessons = params[:q] ? Lesson.search_for(params[:q]) : Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
    @location = Institution.find_by_inst_id(@lesson.institution_id)
  end

  def new
    if can? :create, @lesson
      @lesson = Lesson.new
    end
  end

  def create
    @lesson = Lesson.new(lesson_params)
    # @lesson.owner = current_user.id
    if 
      @lesson.save
      redirect_to @lesson
    else
      render 'new'
    end
  end

  def edit
  
    if can? :update, @lesson
      @lesson = Lesson.find(params[:id])
    end
  end

  def update
    @lesson = Lesson.find(params[:id])
    if 
      @lesson.update(lesson_params)
      redirect_to @lesson
    else
      render 'edit'
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to lessons_path
  end

  

private
def lesson_params
params.require(:lesson).permit(:name, :description, :min_age, :max_age, :weekday, :category)
end

end

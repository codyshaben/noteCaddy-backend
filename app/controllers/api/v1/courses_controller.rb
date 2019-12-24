class Api::V1::CoursesController < ApplicationController
  skip_before_action :require_login, only: [:index]


  # GET /courses
  def index
    @courses = Course.all

    render json: @courses
  end

  # GET /courses/1
  def show
    render json: @course
  end

  # POST /courses
  def create
    @course = Course.new(course_params)

    if @course.save
      render json: @course, status: :created, location: api_v1_course_url(@course)
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /courses/1
  def update
    if @course.update(course_params)
      render json: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # DELETE /courses/1
  def destroy
    @course = Course.find(paramns[:id])

    @course.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_course
    #   @course = Course.find(params[:id])
    # end

    # Only allow a trusted parameter "white list" through.
    def course_params
      params.require(:course).permit(:name, :course_location)
    end
    
end

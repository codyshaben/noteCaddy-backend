class Api::V1::PlayersController < ApplicationController
  before_action :set_player, only: [:show, :update, :destroy]

  # GET /players
  def index
    @players = Player.all
    #include gets all of that players courses to be included inside api index page
    render json: @players, :include => :courses
  end

  # GET /players/1
  def show
    render json: @player
  end

  # POST /players
  def create
    @player = Player.new(player_params)

    if @player.save
      render json: @player, status: :created, location: api_v1_player_url(@player)
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  def add_course
    @player_course = PlayerCourse.new(player_course_params)

    if @player_course.save
      render json: @player_course, status: :created
    else
      render json: @player_course.errors, status: :unprocessable_entity
    end
  end

    


  # PATCH/PUT /players/1
  def update
    if @player.update(player_params)
      render json: @player
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  # DELETE /players/1
  def remove_course
    @player = Player.find(1)
    @player.courses.destroy(params[:course_id])
  end

  
  
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def player_params
      params.require(:player).permit(:username)
    end

    def player_course_params
      params.require(:player).permit(:player_id, :course_id)
    end
end

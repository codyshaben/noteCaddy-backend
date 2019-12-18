class Api::V1::PlayersController < ApplicationController
  skip_before_action :require_login, only: [:create]

  # def index
  #   @players = Player.all
  #   #include gets all of that players courses to be included inside api index page
  #   render json: @players, :include => :courses
  # end

  def profile 
    render json: { player: PlayerSerializer.new(current_player) }, status: :accepted 
  end

  def create
    @player = Player.create(player_params)
    if @player.valid?
      payload = { player_id: @player.id}
      token = encode_token(payload)
      puts token
      render json: {player: @player, jwt: token}
    else
      render json: {errors: @player.errors.full_messages}, status: not_acceptable
    end
  end

  def add_course
    @player_course = PlayerCourse.create(player_course_params)

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
    def player_params
      params.permit(:name, :password)
    end

    def player_course_params
      params.require(:player).permit(:player_id, :course_id)
    end
end

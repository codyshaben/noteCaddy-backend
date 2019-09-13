class Api::V1::HolesController < ApplicationController
  before_action :set_hole, only: [:show, :update, :destroy]

  # GET /holes
  def index
    @holes = Hole.all

    render json: @holes
  end

  # GET /holes/1
  def show
    render json: @hole
  end

  # POST /holes
  def create
    @hole = Hole.new(hole_params)

    if @hole.save
      render json: @hole, status: :created, location: api_v1_hole_url(@hole)
    else
      render json: @hole.errors, status: :unprocessable_entity
    end
  end

  def add_note
    @note = Note.new(note_params)

    if @note.save
      render json: @note, status: :created
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /holes/1
  def update
    if @hole.update(hole_params)
      render json: @hole
    else
      render json: @hole.errors, status: :unprocessable_entity
    end
  end

  # DELETE /holes/1
  def remove_note
    @hole = hole.find(:hole_id)
    @hole.notes.destroy(params[:note_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hole
      @hole = Hole.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hole_params
      params.require(:hole).permit(:yards, :par, :handicap, :course_id, :tee)
    end
end

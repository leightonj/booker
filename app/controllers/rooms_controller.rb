# frozen_string_literal: true

class RoomsController < ApplicationController
  before_action :set_room, only: %i[show update destroy]

  # GET /rooms
  def index
    @rooms = Room.all
  end

  # GET /rooms/1
  def show; end

  # POST /rooms
  def create
    @room = Room.new(room_params)

    if @room.save
      render :show
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rooms/1
  def update
    if @room.update(room_params)
      render :show
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rooms/1
  def destroy
    @room.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_room
    @room = Room.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def room_params
    params.require(:room).permit(:name, :description, :type, :num_guests, :beds_single, :beds_double)
  end
end

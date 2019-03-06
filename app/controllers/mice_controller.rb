class MiceController < ApplicationController
  before_action :set_mouse, only: [:show, :update, :destroy]

  # GET /mice
  def index
    @mice = Mouse.all

    render json: @mice
  end

  # GET /mice/1
  def show
    render json: @mouse
  end

  # POST /mice
  def create
    @mouse = Mouse.new(mouse_params)

    if @mouse.save
      render json: @mouse, status: :created, location: @mouse
    else
      render json: @mouse.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mice/1
  def update
    if @mouse.update(mouse_params)
      render json: @mouse
    else
      render json: @mouse.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mice/1
  def destroy
    @mouse.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mouse
      @mouse = Mouse.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mouse_params
      params.require(:mouse).permit(:name, :age)
    end
end

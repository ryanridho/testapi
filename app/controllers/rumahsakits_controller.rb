class RumahsakitsController < ApplicationController
  before_action :set_rumahsakit, only: [:show, :update, :destroy]

  # GET /rumahsakits
  def index
    @rumahsakits = Rumahsakit.all

    render json: @rumahsakits
  end

  # GET /rumahsakits/1
  def show
    render json: @rumahsakit
  end

  # POST /rumahsakits
  def create
    @rumahsakit = Rumahsakit.new(rumahsakit_params)

    if @rumahsakit.save
      render json: @rumahsakit, status: :created, location: @rumahsakit
    else
      render json: @rumahsakit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rumahsakits/1
  def update
    if @rumahsakit.update(rumahsakit_params)
      render json: @rumahsakit
    else
      render json: @rumahsakit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rumahsakits/1
  def destroy
    @rumahsakit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rumahsakit
      @rumahsakit = Rumahsakit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rumahsakit_params
      params.require(:rumahsakit).permit(:nama)
    end
end

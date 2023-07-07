# class SalutesController < ApplicationController
class SalutesController < ApplicationController
  before_action :set_salute, only: %i[show update destroy]

  # GET /salutes
  def index
    @salutes = Salute.all

    render json: @salutes
  end

  # GET /salutes/1
  def show
    render json: @salute
  end

  # POST /salutes
  def create
    @salute = Salute.new(salute_params)

    if @salute.save
      render json: @salute, status: :created, location: @salute
    else
      render json: @salute.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /salutes/1
  def update
    if @salute.update(salute_params)
      render json: @salute
    else
      render json: @salute.errors, status: :unprocessable_entity
    end
  end

  # DELETE /salutes/1
  def destroy
    @salute.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_salute
    @salute = Salute.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def salute_params
    params.require(:salute).permit(:message)
  end
end

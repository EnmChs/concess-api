class Api::V1::ConcessesController < ApplicationController
  before_action :set_concess, only: [:show, :update, :destroy]

  # GET /concesses
  def index
    @concesses = Concess.all.order(:created_at)
    render json: @concesses
  end

  # GET /concesses/1
  def show
    render json: @concess, include: ['comments']
  end

  # POST /concesses
  def create
    @concess = Concess.new(concess_params)
    if @concess.save
      render json: @concess, status: :created
    else
      render json: @concess.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /concesses/1
  def update
    if @concess.update(concess_params)
      render json: @concess
    else
      render json: @concess.errors, status: :unprocessable_entity
    end
  end

  # DELETE /concesses/1
  def destroy
    @concess.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concess
      @concess = Concess.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def concess_params
      params[:data][:attributes].permit(:type, :name, :aprox_num, :address, :contact_number, :cars_type, :warranty, :open_time, :close_time)
    end
end

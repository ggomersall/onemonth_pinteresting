class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  def index
    @pins = Pin.all
   
  end

  def show
    
  end

  def new
    @pin = Pin.new
    
  end

  def edit
  end

  def create
    @pin = Pin.new(pin_params)
    @pin.save
    redirect_to pins_path
    
  end

  def update
    @pin.update(pin_params)
    redirect_to pins_path
    
  end

  def destroy
    @pin.destroy
    redirect_to pins_path
    
  end

  private
    def set_pin
      @pin = Pin.find(params[:id])
    end

    def pin_params
      params.require(:pin).permit(:description)
    end
end

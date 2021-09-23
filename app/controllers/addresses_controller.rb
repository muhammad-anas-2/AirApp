class AddressesController < ApplicationController

  def new
    @address = @notable.addresses.new
  end

  def create
    @address = @notable.addresses.new address_params
    @notable.save
    redirect_to @notable, notice: "Your address was successfull added"
  end
  def show

  end
  def new

  end
  private
  def address_params
    params.require(:address).permit(:content)
  end
end

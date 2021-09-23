class Hostels::AddressesController < AddressesController
  before_action :set_notable

  def create
    super
  end
  private
  def set_notable
    @notable = Hostel.find(params[:hostel_id])
  end
end
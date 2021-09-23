class Colleges::AddressesController < AddressesController
  before_action :set_notable

  def create
    super
  end
  def index
    @colleges = College.all
  end
  private
  def set_notable
    @notable = College.find(params[:college_id])
  end
end
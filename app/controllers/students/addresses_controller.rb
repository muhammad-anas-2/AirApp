class Students::AddressesController < AddressesController
  before_action :set_notable

  def create
    super
  end
  private
  def set_notable
    @notable = Student.find(params[:student_id])
  end
end
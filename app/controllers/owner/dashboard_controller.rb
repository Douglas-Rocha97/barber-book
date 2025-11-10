class Owner::DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :require_owner!

  def index
    @appointments = Appointment.all
  end

  private

  def require_owner!
    redirect_to authenticated_root_path unless current_user.owner?
  end
end

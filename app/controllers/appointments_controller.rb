# https://dribbble.com/shots/26251511-Barber-Booking-App
# https://dribbble.com/shots/25508922-Barber-Booking-Mobile-App
class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
    @services = Service.all
    @professionals = Professional.all
  end

  def create
    raise
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy

    redirect_back(fallback_location: appointments_path, notice: "Appointment Deleted")
  end

  def available_times
    professional = Professional.find(params[:professional_id])
    date = Date.parse(params[:date])

    # gera os intervalos do expediente
    start_time = professional.start_at
    finish_time = professional.finish_at

    all_times = []
    current = start_time
    while current < finish_time
      all_times << current.strftime("%H:%M")
      current += 30.minutes
    end

    booked_times = Appointment
    .where(professional: professional, date: date)
    .pluck(:start_time)

    available = all_times - booked_times

    render json: available
  end

end

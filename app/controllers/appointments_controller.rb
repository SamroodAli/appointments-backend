class AppointmentsController < ApplicationController
  before_action :authenticate_user
  before_action :set_appointment, only: %i[show update destroy]

  # GET /appointments
  def index
    # all current user's appointments for future dates
    @appointments = current_user.appointments
    @upcoming_appointments =@appointments.where('date > ?', Date.today)
    @past_appointments = @appointments.where('date < ?', Date.today)
    @todays_appoitments = @appointments.where('date = ?', Date.today)
    render json: {
      Today: @todays_appoitments,
      Upcoming:@upcoming_appointments,
      Past:@past_appointments,
    }
  end

  # GET /appointments/1
  def show
    render json: @appointment
  end

  # POST /appointments
  def create
    teacher_id = appointment_params[:teacher_id]
    date = DateTime.parse(appointment_params[:date])
    time = appointment_params[:time]

    if Appointment.find_by({teacher_id: teacher_id, date: date, time: time})
      return render json: {
        errors: ['Appointment already exists']
      }
    end
    
    @appointment = Appointment.new({ teacher_id: teacher_id, user_id: current_user.id ,date: date,time: time})

    if @appointment.save
      render json: @appointment, status: :created, location: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appointments/1
  def update
    if @appointment.update(appointment_params)
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appointments/1
  def destroy
    @appointment.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def appointment_params
    params.require(:appointment).permit(:teacher_id,:date,:time)
  end
end

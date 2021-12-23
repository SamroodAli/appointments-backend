class AppointmentsController < ApplicationController
  before_action :authenticate_user
  before_action :set_appointment, only: %i[show update destroy]

  # GET /appointments
  def index
    render json: Appointment.all_for(current_user.id)
  end

  # GET /appointments/1
  def show
    render json: @appointment
  end

  # POST /appointments
  def create
    @appointment = Appointment.new(appointment_params)

    if !@appointment.reserved? && @appointment.save
      render json: @appointment.reserved?, status: :created, location: @appointment
    else
      render json: { errors: ['Appointment already exists'] }, status: 400
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

  # Only allow a list of trusted parameters through
  def appointment_params
    send_params = params.require(:appointment).permit(:teacher_id, :date, :time)
    send_params[:date] = DateTime.parse(send_params[:date])
    send_params[:user_id] = current_user.id
    send_params
  end
end

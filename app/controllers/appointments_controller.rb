class AppointmentsController < ApplicationController
  before_action :authenticate_user, only: %i[index]
  before_action :set_appointment, only: %i[show update destroy]

  # GET /appointments
  def index
    @appointments = User.first.appointments
    render json: @appointments
  end

  # GET /appointments/1
  def show
    render json: @appointment
  end

  # POST /appointments
  def create
    teacher_id = appointment_params[:teacher_id]
    @appointment = Appointment.new({ teacher_id: teacher_id,
                                     user_id: User.first.id })

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
    params.require(:appointment).permit(:teacher_id)
  end
end

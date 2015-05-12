class AppointmentsController < ApplicationController
  def index
    @patient      = Patient.find(params[:patient_id])
    @appointments = @patient.appointments

    respond_to do |format|
      format.html
      format.json { render json: @appointments, root: false, each_serializer: AppointmentSerializer }
    end
  end

  def all
    @appointments = Appointment.all

    respond_to do |format|
      format.html
      format.json { render json: @appointments, root: false, each_serializer: AppointmentSerializer }
    end
  end

  def new
    @patient         = Patient.find(params[:patient_id])
    @appointment     = @patient.appointments.new
    @treatment_plans = @patient.treatment_plans.pluck(:title, :id)
  end

  def create
    @patient     = Patient.find(params[:patient_id])
    @appointment = @patient.appointments.new(appointment_params)

    if @appointment.save
      redirect_to patient_appointments_path(@patient)
    else
      render 'new'
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy

    redirect_to user_appointments_path(@user)
  end

  private

  def appointment_params
    params.require(:appointment).permit!
  end
end

class PatientsController < ApplicationController
  def index
    @patients = Patient.for_user(current_user)
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
    @doctors = User.doctors.pluck(:first_name, :id)
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      redirect_to patients_path
    else
      render 'new'
    end
  end

  def edit
    @patient = Patient.find(params[:id])
    @doctors = User.doctors.pluck(:first_name, :id)
  end

  def update
    @patient = Patient.find(params[:id])

    if @patient.update(patient_params)
      redirect_to patients_path
    else
      render 'new'
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :address, :zip, :city, :birthday, :social_security_number, :email, :phone_number, :gender, :user_id)
  end
end

class TreatmentPlansController < ApplicationController
  def index
    @patient         = Patient.find(params[:patient_id])
    @treatment_plans = @patient.treatment_plans
  end

  def new
    @patient        = Patient.find(params[:patient_id])
    @treatment_plan = @patient.treatment_plans.new
    @treatments     = Treatment.all
  end

  def show
    @treatment_plan = TreatmentPlan.find(params[:id])
    @treatments     = @treatment_plan.treatments
  end

  def create
    @patient        = Patient.find(params[:patient_id])
    @treatment_plan = @patient.treatment_plans.new(treatment_plan_params)
    @treatments     = Treatment.all

    @treatment_plan.treatments = Treatment.find(params[:treatment_plan][:treatment_ids].split(','))

    if @treatment_plan.save
      redirect_to patient_treatment_plans_path(@patient)
    else
      render 'new'
    end
  end

  def edit
    @treatment_plan = TreatmentPlan.find(params[:id])
  end

  def update
    @treatment_plan = TreatmentPlan.find(params[:id])
    @treatments     = Treatment.all

    if @treatment_plan.update(treatment_plan_params)
      redirect_to patient_treatment_plans_path(@treatment_plan.patient)
    else
      render 'new'
    end
  end

  private

  def treatment_plan_params
    params.require(:treatment_plan).permit(:title, :patient_id, :finished_at, :treatment_ids)
  end
end

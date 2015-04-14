class TreatmentPlansController < ApplicationController
  def index
    @treatment_plans = TreatmentPlan.all
    @patients        = Patient.pluck(:id, :first_name)
  end

  def new
    @treatment_plan = TreatmentPlan.new
  end

  def create
    @treatment_plan = TreatmentPlan.new(treatment_plan_params)

    if @treatment_plan.save
      redirect_to treatment_plans_path
    else
      render 'new'
    end
  end

  def edit
    @treatment_plan = TreatmentPlan.find(params[:id])
  end

  def update
    @treatment_plan = TreatmentPlan.find(params[:id])

    if @treatment_plan.update(treatment_plan_params)
      redirect_to treatment_plans_path
    else
      render 'new'
    end
  end

  private

  def treatment_plan_params
    params.require(:treatment_plan).permit(:title, :patient_id, :finished_at)
  end
end

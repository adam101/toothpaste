class TreatmentsController < ApplicationController
  def index
    @treatments = Treatment.all
    @doctors  = User.pluck(:first_name)
  end

  def new
    @treatment = Treatment.new
  end

  def create
    @treatment = Treatment.new(treatment_params)

    if @treatment.save
      redirect_to treatments_path
    else
      render 'new'
    end
  end

  def edit
    @treatment = Treatment.find(params[:id])
  end

  def update
    @treatment = Treatment.find(params[:id])

    if @treatment.update(treatment_params)
      redirect_to treatments_path
    else
      render 'new'
    end
  end

  private

  def treatment_params
    params.require(:treatment).permit(:title, :price, :description)
  end
end

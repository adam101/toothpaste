class AppointmentSerializer < ActiveModel::Serializer
  attributes :start,
             :end,
             :title

  def start
    object.start_time
  end

  def end
    object.end_time
  end

  def title
    object.treatment_plan.title
  end
end

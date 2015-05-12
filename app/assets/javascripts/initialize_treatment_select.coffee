$(document).on 'click', '.list-group-item', ->
  $(@).toggleClass('active')

$(document).on 'submit', '#new_treatment_plan', ->
  treatmentIds = $.map $('.treatment.active'), (treatment) -> $(treatment).data('id')
  $('#treatment_plan_treatment_ids').val(treatmentIds)

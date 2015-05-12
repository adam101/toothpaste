Amennyiben(/^az új páciens felvétele oldalon vagyok$/) do
  visit '/patients/new'
end

Ha(/^kitöltöm a páciens adatait$/) do
  fill_in 'patient_first_name',             with: 'First name'
  fill_in 'patient_last_name',              with: 'Last name'
  fill_in 'patient_address',                with: 'Test street 123.'
  fill_in 'patient_zip',                    with: '1234'
  fill_in 'patient_city',                   with: 'Budapest'
  fill_in 'patient_birthday',               with: '1991-04-19'
  fill_in 'patient_social_security_number', with: '123456789'
  fill_in 'patient_email',                  with: 'example@noreply.com'
  fill_in 'patient_phone_number',           with: '20/123-4567'
  fill_in 'patient_gender',                 with: 'female'
  select  'Ida',                            from: 'patient_user'
end

Akkor(/^a páciens megjelenik a páciensek listájában$/) do
  pending # express the regexp above with the code you wish you had
end

Ha(/^a páciens módosítása gombra kattintok$/) do
  pending # express the regexp above with the code you wish you had
end

Ha(/^módosítom az adatait$/) do
  pending # express the regexp above with the code you wish you had
end

Akkor(/^a páciens adatlapján az új adatokat kell látnom$/) do
  pending # express the regexp above with the code you wish you had
end

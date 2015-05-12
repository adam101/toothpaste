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
  select  'female',                         from: 'patient_gender'
  select  'Ida',                            from: 'patient_user_id'
end

Akkor(/^a páciens megjelenik a páciensek listájában$/) do
  find('table').all('tr').last.all('td').first.text == 'First name'
end

Ha(/^a páciens módosítása gombra kattintok$/) do
  find('table').all('tr').last.click_link 'Edit'
end

Ha(/^módosítom az adatait$/) do
  fill_in 'patient_first_name', with: 'Modified first name'
end

Akkor(/^a páciens adatlapján az új adatokat kell látnom$/) do
  find('table').all('tr').last.all('td').first.text == 'Modified first name'
end

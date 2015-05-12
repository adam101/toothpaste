Amennyiben(/^asszisztensként vagyok bejelentkezve$/) do
  visit '/users/sign_in'
  fill_in 'user_email',    with: 'assistant@noreply.com'
  fill_in 'user_password', with: 'almafa123'

  click_button 'Log in'
end

Ha(/^egy páciens adatlapján vagyok$/) do
  visit '/patients/1'
end

Ha(/^az új időpont felvétele gombra kattintok$/) do
  pending # express the regexp above with the code you wish you had
end

Ha(/^kiválasztok egy időpontot$/) do
  pending # express the regexp above with the code you wish you had
end

Ha(/^kiválasztom az orvost$/) do
  pending # express the regexp above with the code you wish you had
end

Akkor(/^az új időpontot a páciens adatlapján látnom kell$/) do
  pending # express the regexp above with the code you wish you had
end

Amennyiben(/^egy olyan páciens adatlapján vagyok, akinek van időpontja$/) do
  pending # express the regexp above with the code you wish you had
end

Ha(/^egy időpont törlése gombra kattintok$/) do
  pending # express the regexp above with the code you wish you had
end

Akkor(/^az időpontnak nem szabad látszódnia a felületen$/) do
  pending # express the regexp above with the code you wish you had
end

Ha(/^egy időpont módosítása gombra kattintok$/) do
  pending # express the regexp above with the code you wish you had
end

Akkor(/^az időpont módosítása oldalon kell hogy legyek$/) do
  pending # express the regexp above with the code you wish you had
end

Amennyiben(/^egy páciens foglalásának módosítása oldalán vagyok$/) do
  pending # express the regexp above with the code you wish you had
end

Ha(/^átírom a dátumot$/) do
  pending # express the regexp above with the code you wish you had
end

Ha(/^a mentés gombra kattintok$/) do
  click_on 'commit'
end

Akkor(/^a foglalás oldalán az új időpontot kell látnom$/) do
  pending # express the regexp above with the code you wish you had
end

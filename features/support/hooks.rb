Before do
  doctor = User.create! email: 'kovacst@noreply.com', password: 'almafa123', first_name: 'Janos', last_name: 'Kovacs', doctor: true
  doctor2 = User.create! email: 'horvath@noreply.com', password: 'almafa123', first_name: 'Andras', last_name: 'Horvath', doctor: true
  User.create! email: 'martos@noreply.com', password: 'almafa123', first_name: 'Ida', last_name: 'Martos', doctor: true
  User.create! email: 'kozma@noreply.com', password: 'almafa123', first_name: 'Adam', last_name: 'Kozma', doctor: true
  User.create! email: 'admin@noreply.com', password: 'almafa123', first_name: 'Adam', last_name: 'Admin', admin: true
  User.create! email: 'assistant@noreply.com', password: 'almafa123', first_name: 'Edit', last_name: 'Nagy'

  patient1 = Patient.create! email: 'test0@noreply.com', first_name: 'Bela', last_name: 'Kovacs', zip: '1145', city: 'Budapest', social_security_number: '239471264', phone_number: '+36305632233', gender: 'M', birthday: '1990-12-10', address: 'Deak Ferenc ter', user: doctor
  patient2 =  Patient.create! email: 'test1@noreply.com', first_name: 'Andras', last_name: 'Szerdel', zip: '1145', city: 'Budapest', social_security_number: '239471264', phone_number: '+36305632233', gender: 'M', birthday: '1991-11-10', address: 'Deak Ferenc ter', user: doctor
  Patient.create! email: 'test2@noreply.com', first_name: 'Adam', last_name: 'Gyori', zip: '1145', city: 'Budapest', social_security_number: '239471264', phone_number: '+36305632233', gender: 'M', birthday: '1990-12-10', address: 'Deak Ferenc ter', user: doctor
  Patient.create! email: 'test3@noreply.com', first_name: 'Denes', last_name: 'Molnar', zip: '1145', city: 'Budapest', social_security_number: '239471264', phone_number: '+36305632233', gender: 'M', birthday: '1990-12-10', address: 'Deak Ferenc ter', user: doctor
  patient3 = Patient.create! email: 'test4@noreply.com', first_name: 'Peter', last_name: 'Megyeri', zip: '1145', city: 'Budapest', social_security_number: '239471264', phone_number: '+36305632233', gender: 'M', birthday: '1990-12-10', address: 'Deak Ferenc ter', user: doctor2
  patient4 = Patient.create! email: 'test5@noreply.com', first_name: 'Laszlo', last_name: 'Laszay', zip: '1145', city: 'Budapest', social_security_number: '239471264', phone_number: '+36305632233', gender: 'M', birthday: '1990-12-10', address: 'Deak Ferenc ter', user: doctor2
  patient5 = Patient.create! email: 'test6@noreply.com', first_name: 'Andrea', last_name: 'Fekete', zip: '1145', city: 'Budapest', social_security_number: '239471264', phone_number: '+36305632233', gender: 'M', birthday: '1990-12-10', address: 'Deak Ferenc ter', user: doctor2
  Patient.create! email: 'test7@noreply.com', first_name: 'Richard', last_name: 'Csizmadia', zip: '1145', city: 'Budapest', social_security_number: '239471264', phone_number: '+36305632233', gender: 'M', birthday: '1990-12-10', address: 'Deak Ferenc ter', user: doctor2
  Patient.create! email: 'test8@noreply.com', first_name: 'Boldizsar', last_name: 'Nagy', zip: '1145', city: 'Budapest', social_security_number: '239471264', phone_number: '+36305632233', gender: 'M', birthday: '1990-12-10', address: 'Deak Ferenc ter', user: doctor2
  Patient.create! email: 'test9@noreply.com', first_name: 'Adam', last_name: 'Toth', zip: '1145', city: 'Budapest', social_security_number: '239471264', phone_number: '+36305632233', gender: 'M', birthday: '1990-12-10', address: 'Deak Ferenc ter', user: doctor2

  t1 = Treatment.create! title: 'foghuzas', price: '2500', description: ''
  t2 = Treatment.create! title: 'fogtomes', price: '5000', description: ''
  t3 = Treatment.create! title: 'fogfeherites', price: '15000', description: ''
  t4 = Treatment.create! title: 'fogko eltavolitas', price: '10000', description: ''
  t5 = Treatment.create! title: 'fogszabalyzo keszites', price: '20000', description: ''
  t6 = Treatment.create! title: 'airflow kezeles', price: '14000', description: ''

  tp1 = TreatmentPlan.create! title: "Kezelesiterv 1", patient: patient1
  TreatmentPlan.create! title: "Kezelesiterv 2", patient: patient1
  TreatmentPlan.create! title: "Kezelesiterv 3", patient: patient1

  TreatmentPlan.create! title: "Kezelesiterv 1", patient: patient2
  TreatmentPlan.create! title: "Kezelesiterv 2", patient: patient2
  TreatmentPlan.create! title: "Kezelesiterv 3", patient: patient2

  tp2 = TreatmentPlan.create! title: "Kezelesiterv 1", patient: patient3
  tp3 = TreatmentPlan.create! title: "Kezelesiterv 2", patient: patient3
  tp4 = TreatmentPlan.create! title: "Kezelesiterv 3", patient: patient4
  tp5 = TreatmentPlan.create! title: "Kezelesiterv 3", patient: patient5

  tp1.treatments = [t1, t2]
  tp1.save

  Appointment.create! start_time: DateTime.parse('2015-05-15 12:30') , end_time: DateTime.parse('2015-05-15 13:30'), treatment_plan: tp1
  Appointment.create! start_time: DateTime.parse('2015-05-16 12:30'), end_time: DateTime.parse('2015-05-16 14:30'), treatment_plan: tp2
  Appointment.create! start_time: DateTime.parse('2015-05-17 12:30'), end_time: DateTime.parse('2015-05-17 14:30'), treatment_plan: tp3
  Appointment.create! start_time: DateTime.parse('2015-05-18 10:30'), end_time: DateTime.parse('2015-05-18 14:30'), treatment_plan: tp4
  Appointment.create! start_time: DateTime.parse('2015-05-18 12:30'), end_time: DateTime.parse('2015-05-18 14:30'), treatment_plan: tp5
end

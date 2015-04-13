# language: hu
Jellemző: Felhasználókezelés

  Forgatókönyv: Bejelentkezés
    Amennyiben a bejelentkezés oldalon vagyok
    Ha beírom a felhasználónevem
    És beírom jelszavam
    Akkor a páciensek listáját kell látnom

  Forgatókönyv: Regisztráció
    Amennyiben adminisztrátor jogosultsággal vagyok bejelentkezve
    Ha az új felhasználó felvitele oldalon vagyok
    És kitöltöm a felhasználó nevét
    És kitöltöm a felhasználó email címét
    Akkor a felhasználónak létre kell jönnie az adatbázisban

  Forgatókönyv: Felhasználó törlése
    Amennyiben adminisztrátor jogosultsággal vagyok bejelentkezve
    Ha a felhasználókezelés oldalon vagyok
    És rákattintok egy felhasználó törlése gombra
    Akkor a felhasználónak el kell tűnnie az adatbázisból

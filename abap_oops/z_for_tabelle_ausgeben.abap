*&---------------------------------------------------------------------*
*& Report z_for_tabelle_ausgeben
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*

REPORT z_for_tabelle_ausgeben.

TYPES: BEGIN OF ty_mitarbeiter,
         id   TYPE i,
         name TYPE string,
       END OF ty_mitarbeiter.

DATA: it_mitarbeiter TYPE TABLE OF ty_mitarbeiter.

"Interne Tabelle mit Daten füllen
it_mitarbeiter = VALUE #(
    ( id = 1 name = 'TEST name1  ' )
    ( id = 2 name = 'TEST name2  ' )
    ( id = 3 name = 'TEST name3  ' )
).

"Inhalt der internen Tabelle mit FOR-Schleife ausgeben
LOOP AT it_mitarbeiter INTO DATA(wa_mitarbeiter).
  WRITE: / wa_mitarbeiter-id, wa_mitarbeiter-name.
ENDLOOP.


WRITE: / 'Alternative mit FOR-Schleife:'.
*for wa_mitarbeiter in it_mitarbeiter.
*  WRITE: / wa_mitarbeiter-id, wa_mitarbeiter-name.
*endfor.
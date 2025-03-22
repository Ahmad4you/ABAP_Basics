*&---------------------------------------------------------------------*
*& Report z_if_beispiel
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*

REPORT z_if_beispiel.

DATA: lv_age TYPE i VALUE 25.

IF lv_age >= 18.
  WRITE: / 'Vollj�hrig'.
ELSE.
  WRITE: / 'Minderj�hrig'.
ENDIF.

IF lv_age >= 18 AND lv_age < 65.
  WRITE: / 'Erwachsen im erwerbsf�higen Alter'.
ELSEIF lv_age >= 65.
  WRITE: / 'Senior'.
ELSE.
  WRITE: / 'Kind'.
ENDIF.


DATA: lv_month TYPE i.

lv_month = 3.

CASE lv_month.
  WHEN 1.
    WRITE: / 'Januar'.
  WHEN 2.
    WRITE: / 'Februar'.
  WHEN 3.
    WRITE: / 'M�rz'.
  WHEN 4.
    WRITE: / 'April'.
  WHEN 5.
    WRITE: / 'Mai'.
  WHEN OTHERS.
    WRITE: / 'Ung�ltiger Monat'.
ENDCASE.

DATA: lv_day TYPE i.
lv_day = 1.

CASE lv_day.
  WHEN 1 OR 2 OR 3 OR 4 OR 5.
    WRITE: / 'Wochentag'.
  WHEN 6 OR 7.
    WRITE: / 'Wochenende'.
  WHEN OTHERS.
     WRITE: / 'Ung�ltiger Tag'.
ENDCASE.

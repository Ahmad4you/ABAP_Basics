*&---------------------------------------------------------------------*
*& Report Zz_kalk
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Zz_kalk.

PARAMETERS: p_zahl1 TYPE i,
            p_zahl2 TYPE i.

CLASS lcl_mathe DEFINITION.

  PUBLIC SECTION.
*** Instance Attributen
DATA: ergebnis_multi TYPE i,
      ergebnis_add TYPE i.

** Instance Methoden
  METHODS: multiplikation IMPORTING iv_zahl1 TYPE i iv_zahl2 TYPE i,
           addition IMPORTING iv_zahl1 TYPE i iv_zahl2 TYPE i,
           anzeige_ergebnis.

PROTECTED SECTION.
PRIVATE SECTION.

ENDCLASS.

CLASS lcl_mathe IMPLEMENTATION.

METHOD multiplikation.
  ergebnis_multi = iv_zahl1 * iv_zahl2.
ENDMETHOD.

METHOD addition.
  ergebnis_add = iv_zahl1 + iv_zahl2.
ENDMETHOD.

METHOD anzeige_ergebnis.
WRITE: / 'ergebnis für Multiplikation ist:' , ergebnis_multi,
       / 'ergebnis für Addition ist:' , ergebnis_add.

ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.
DATA: obj_mathe TYPE REF TO lcl_mathe.
CREATE OBJECT obj_mathe.

CALL METHOD obj_mathe->multiplikation EXPORTING iv_zahl1 = p_zahl1 iv_zahl2 = p_zahl2.
CALL METHOD obj_mathe->addition EXPORTING iv_zahl1 = p_zahl1 iv_zahl2 = p_zahl2.
CALL METHOD obj_mathe->anzeige_ergebnis( ).
*&---------------------------------------------------------------------*
*& Report Z_DATEN_KAPSELUNG
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*

REPORT z_daten_kapselung.

CLASS zcl_person DEFINITION.

  PUBLIC SECTION.
    METHODS: set_name IMPORTING iv_name TYPE string,
      get_name RETURNING VALUE(rv_name) TYPE string. " müssen Rückgabeparameter von Methoden, die einen Wert zurückgeben, explizit als VALUE() definiert werden.

  PRIVATE SECTION.
    DATA: mv_name TYPE string. "Private Attribut
ENDCLASS.

CLASS zcl_person IMPLEMENTATION.
  METHOD set_name.
    mv_name = iv_name.
  ENDMETHOD.

  METHOD get_name.
    rv_name = mv_name.
  ENDMETHOD.
ENDCLASS.


START-OF-SELECTION.

  DATA: lo_person TYPE REF TO zcl_person.

  CREATE OBJECT lo_person.

  lo_person->set_name( iv_name = 'Ahmad Testing' ). "Zugriff über Methode

  WRITE: / lo_person->get_name( ).
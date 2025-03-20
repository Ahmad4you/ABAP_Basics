*&---------------------------------------------------------------------*
*& Report Z_calculator
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_calculator.


CLASS lcl_calculator DEFINITION.
  PUBLIC SECTION.
    METHODS: add IMPORTING iv_a TYPE i iv_b TYPE i RETURNING VALUE(rv_result) TYPE i.
ENDCLASS.

CLASS lcl_calculator IMPLEMENTATION.
  METHOD add.
    rv_result = iv_a + iv_b.
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.

*DATA lo_calculator TYPE REF TO lcl_calculator.
DATA  lv_result TYPE i.

DATA(lo_calculator) = NEW lcl_calculator( ).
lv_result = lo_calculator->add( iv_a = 10 iv_b = 20 ).

WRITE: / 'Ergebnis:', lv_result.




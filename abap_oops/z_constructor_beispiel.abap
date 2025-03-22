*&---------------------------------------------------------------------*
*& Report z_constructor_beispiel
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*

REPORT z_constructor_beispiel.

CLASS zcl_employee DEFINITION.
  PUBLIC SECTION.
    DATA: employee_id TYPE i,
          employee_name TYPE string.
    METHODS: constructor IMPORTING iv_id TYPE i iv_name TYPE string,
             display_employee_info.
ENDCLASS.

CLASS zcl_employee IMPLEMENTATION.
  METHOD constructor.
    me->employee_id = iv_id.
    me->employee_name = iv_name.
  ENDMETHOD.

  METHOD display_employee_info.
    WRITE: / 'Mitarbeiter-ID:', me->employee_id,
           / 'Name:', me->employee_name.
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.

DATA: lo_employee TYPE REF TO zcl_employee.

CREATE OBJECT lo_employee
  EXPORTING
    iv_id = 2001
    iv_name = 'Ahmad Test'.

lo_employee->display_employee_info( ).
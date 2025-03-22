*&---------------------------------------------------------------------*
*& Report Z_INTERFACE_BEISPIEL
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*

REPORT z_interface_beispiel.

**INTERFACE zif_printable PUBLIC.
INTERFACE zif_printable.
  CONSTANTS:
    c_company_name TYPE string VALUE 'Meine Firma',
    c_max_length   TYPE i VALUE 100.
  METHODS:
    display_info.
ENDINTERFACE.

** CLASS zcl_employee DEFINITION PUBLIC CREATE PUBLIC.
CLASS zcl_employee DEFINITION.

  PUBLIC SECTION.
    INTERFACES zif_printable.
    DATA: employee_name TYPE string.
    METHODS: constructor IMPORTING iv_name TYPE string.
ENDCLASS.

CLASS zcl_employee IMPLEMENTATION.
  METHOD constructor.
    me->employee_name = iv_name.
  ENDMETHOD.

  METHOD zif_printable~display_info.
    WRITE: / zif_printable=>c_company_name,
           / 'Name:', me->employee_name,
           / 'Maximale Länge:', zif_printable=>c_max_length.
  ENDMETHOD.
ENDCLASS.



START-OF-SELECTION.

DATA: lo_employee TYPE REF TO zif_printable.

CREATE OBJECT lo_employee TYPE zcl_employee
  EXPORTING
    iv_name = 'Ahmad Test'.

lo_employee->display_info( ).


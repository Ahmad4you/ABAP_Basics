*&---------------------------------------------------------------------*
*& Report z_vererbung
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_vererbung.

CLASS zcl_person DEFINITION.
  PUBLIC SECTION.
    DATA: name TYPE string.
    METHODS: display_name.
ENDCLASS.

CLASS zcl_employee DEFINITION INHERITING FROM zcl_person.
  PUBLIC SECTION.
    DATA: employee_id TYPE i.
    METHODS: display_employee_info,
      display_name REDEFINITION. "Methode redefinieren
ENDCLASS.

CLASS zcl_person IMPLEMENTATION.
  METHOD display_name.
    WRITE: / 'Name:', me->name.
  ENDMETHOD.
ENDCLASS.

CLASS zcl_employee IMPLEMENTATION.
  METHOD display_employee_info.
*    super->display_name( ).
    WRITE: / 'Mitarbeiter-ID:', me->employee_id.
  ENDMETHOD.

  METHOD display_name.
    super->display_name( ).
    WRITE: / 'Zusätzliche Info aus der Unterklasse'.
  ENDMETHOD.
ENDCLASS.


START-OF-SELECTION.

  DATA: lo_employee TYPE REF TO zcl_employee.

  CREATE OBJECT lo_employee.
  lo_employee->name = 'Ahmad Testing'.
  lo_employee->employee_id = 1001.
*  lo_employee->display_employee_info( ).
  lo_employee->display_name( )."Aufruf der redefinierten Methode
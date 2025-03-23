*&---------------------------------------------------------------------*
*& Report z_schleifen
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*

REPORT z_schleifen.

TYPES: BEGIN OF ty_employee,
         employee_id TYPE i,
         employee_name TYPE string,
       END OF ty_employee.

DATA: it_employees TYPE TABLE OF ty_employee,
      wa_employee TYPE ty_employee.

wa_employee-employee_id = 1001.
wa_employee-employee_name = 'Max Mustermann'.
APPEND wa_employee TO it_employees.

wa_employee-employee_id = 1002.
wa_employee-employee_name = 'Anna Schmidt'.
APPEND wa_employee TO it_employees.

LOOP AT it_employees INTO wa_employee.
  WRITE: / wa_employee-employee_id, wa_employee-employee_name.
ENDLOOP.

*** sy-index ist eine Systemvariable
DO 5 TIMES.
  WRITE: / sy-index.
ENDDO.

*** WHILE Loop 

DATA: lv_counter TYPE i VALUE 1.

WHILE lv_counter <= 5.
  WRITE: / lv_counter.
  lv_counter = lv_counter + 1.
ENDWHILE.







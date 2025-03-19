*&---------------------------------------------------------------------*
*& Report Z_Strukturen
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_Strukturen.


TYPES: BEGIN OF ty_employee,
      employee_id TYPE i,
      employee_name TYPE string,
      departement TYPE string,
        END OF ty_employee.

DATA: it_employees TYPE TABLE OF ty_employee.

DATA wa_employee TYPE ty_employee.

wa_employee-employee_id = 1001.
wa_employee-employee_name = 'Ahmad Alrefai'.
wa_employee-departement = 'dev'.
APPEND wa_employee TO it_employees.

wa_employee-employee_id = 1002.
wa_employee-employee_name = 'Anna Schmitt'.
wa_employee-departement = 'HR'.
APPEND wa_employee TO it_employees.       " DIESER TEXT WIRD NICHT AUSGEF�HRT.

LOOP AT it_employees INTO wa_employee.
  WRITE: / 'Mitarneiter-id: ', wa_employee-employee_id,
         / 'Name: ' , wa_employee-employee_name,
         / 'departement: ' , wa_employee-departement.

        SKIP 1.
ENDLOOP.


* DIESE ZEILE WIRD NICHT AUSGEF�HRT.


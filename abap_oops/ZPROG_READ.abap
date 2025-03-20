*&---------------------------------------------------------------------*
*& Report ZPROG_READ
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPROG_READ.

CLASS robot DEFINITION.

  PUBLIC SECTION.
    DATA: name  TYPE char20, color TYPE char10, weight TYPE i.

    METHODS: constructor IMPORTING im_name TYPE char20 im_color TYPE char10 im_weight TYPE i.

ENDCLASS.

CLASS robot IMPLEMENTATION.
  METHOD constructor.
    name = im_name.
    color = im_color.
    weight = im_weight.
  ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.
DATA(robot1) = NEW robot( im_name = 'sami' im_color = 'red' im_weight = 30 ).

WRITE: / robot1->name.

robot1->name = 'John'.
write: / robot1->name.
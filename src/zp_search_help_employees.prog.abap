*&---------------------------------------------------------------------*
*& Report zp_search_help_employees
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zp_search_help_employees.

PARAMETERS: pa_test1 TYPE zpemployees-titles,
            pa_test2 TYPE zpemployees-depart,
            pa_test3 TYPE zpemployees-positions.

TYPES: ty_employees TYPE zpemployees.

DATA: lt_employees TYPE STANDARD TABLE OF ty_employees.

SELECT * FROM zpemployees
WHERE
titles = @pa_test1 AND
depart = @pa_test2 AND
positions = @pa_test3
INTO CORRESPONDING FIELDS OF TABLE @lt_employees.


cl_demo_output=>display(
  EXPORTING
    data = lt_employees
    name = CONV #( TEXT-001 )


).

*&---------------------------------------------------------------------*
*& Report zp_search_help_select_option
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zp_search_help_select_option.

TYPES: ty_employees TYPE zpemployees.


DATA: lt_employees TYPE STANDARD TABLE OF ty_employees,
      ls_employees TYPE ty_employees.

SELECT-OPTIONS:    s_test1 FOR ls_employees-titles    NO INTERVALS,
                   s_test2 FOR ls_employees-depart    NO INTERVALS,
                   s_test3 FOR ls_employees-positions NO INTERVALS.

SELECT * FROM zpemployees
WHERE
titles    IN @s_test1 AND
depart    IN @s_test2 AND
positions IN @s_test3
INTO CORRESPONDING FIELDS OF TABLE @lt_employees.


cl_demo_output=>display(
  EXPORTING
    data = lt_employees
    name = CONV #( TEXT-001 )


).

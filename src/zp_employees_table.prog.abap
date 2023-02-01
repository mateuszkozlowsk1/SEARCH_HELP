*&---------------------------------------------------------------------*
*& Report zp_employees_table
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zp_employees_table.

TYPES: BEGIN OF ty_employees,
         employeeid TYPE i,
         titles     TYPE char8,
         fname      TYPE char20,
         lname      TYPE char20,
         depart     TYPE char20,
         positions  TYPE char20,
         datofjoin  TYPE d.
TYPES: END OF ty_employees.


DATA: lt_employees TYPE STANDARD TABLE OF ty_employees.

lt_employees = VALUE #( ( employeeid = 1  titles = 'MR'  fname = 'Maciej'    lname = 'Nowak'     depart = 'Logistic'    positions = 'Logistic Manager'      datofjoin = '20170522')
                        ( employeeid = 2  titles = 'MR'  fname = 'Pawel'     lname = 'Kowalski'  depart = 'IT'          positions = 'Frontend Developer'    datofjoin = '20170524')
                        ( employeeid = 3  titles = 'MRS' fname = 'Anna'      lname = 'Jablonska' depart = 'Finance'     positions = 'Adviser'               datofjoin = '20170711')
                        ( employeeid = 4  titles = 'MR'  fname = 'Piotr'     lname = 'Jankowski' depart = 'Logistic'    positions = 'Logistic'              datofjoin = '20180130')
                        ( employeeid = 5  titles = 'MRS' fname = 'Jadwiga'   lname = 'Krawiec'   depart = 'Controlling' positions = 'Team Leader'           datofjoin = '20180101')
                        ( employeeid = 6  titles = 'MR'  fname = 'Mateusz'   lname = 'Kozlowski' depart = 'Managment'   positions = 'Manager'               datofjoin = '20190228')
                        ( employeeid = 7  titles = 'MR'  fname = 'Bartosz'   lname = 'Chwierut'  depart = 'Finance'     positions = 'Adviser'               datofjoin = '20190212')
                        ( employeeid = 8  titles = 'MRS' fname = 'Hanna'     lname = 'Strojna'   depart = 'Logistic'    positions = 'Logistic (Internship)' datofjoin = '20190330')
                        ( employeeid = 9  titles = 'MRS' fname = 'Iwona'     lname = 'Kowalik'   depart = 'IT'          positions = 'ABAP Developer'        datofjoin = '20190310')
                        ( employeeid = 10 titles = 'MRS' fname = 'Barbara'   lname = 'Siwiec'    depart = 'Controlling' positions = 'Adviser'               datofjoin = '20190402')
                        ( employeeid = 11 titles = 'MRS' fname = 'Monika'    lname = 'Jablonska' depart = 'Logistic'    positions = 'Logistic '             datofjoin = '20190708')
                        ( employeeid = 12 titles = 'MRS' fname = 'Katarzyna' lname = 'Wysocka'   depart = 'Finance'     positions = 'Adviser'               datofjoin = '20200517')
                        ( employeeid = 13 titles = 'MR'  fname = 'Kacper'    lname = 'Lanucha'   depart = 'Logistic'    positions = 'Warehouse Manager'     datofjoin = '20200527')
                        ( employeeid = 14 titles = 'MR'  fname = 'Adam'      lname = 'Kowal'     depart = 'IT'          positions = 'IT Manager'            datofjoin = '20210905')
                        ( employeeid = 15 titles = 'MRS' fname = 'Patrycja'  lname = 'Gornik'    depart = 'Logistic'    positions = 'Logistic'              datofjoin = '20210917')
                        ( employeeid = 16 titles = 'MR'  fname = 'Tadeusz'   lname = 'Etker'     depart = 'Controlling' positions = 'Adviser'               datofjoin = '20210911')
                        ( employeeid = 17 titles = 'MR'  fname = 'Kaziemirz' lname = 'Jablonski' depart = 'Logistic'    positions = 'Logistic'              datofjoin = '20220223')
                        ( employeeid = 18 titles = 'MR'  fname = 'Krzysztof' lname = 'Nowak'     depart = 'IT'          positions = 'Backend Developer'     datofjoin = '20220221')
                        ( employeeid = 19 titles = 'MRS' fname = 'Emilia'    lname = 'Krawiec'   depart = 'Finance'     positions = 'Adviser'               datofjoin = '20230113') ).

cl_demo_output=>display(
  EXPORTING
    data = lt_employees

).

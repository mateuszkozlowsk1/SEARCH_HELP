*&---------------------------------------------------------------------*
*& Report zp_extrnl_employees
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zp_extrnl_employees.

TYPES: ty_employees TYPE zpemployees.


DATA: lt_employees TYPE STANDARD TABLE OF ty_employees.

lt_employees = VALUE #( ( employeeid = 1  titles = 'MR'  fname = 'Maciej'    lname = 'Nowak'     depart = 'LOGISTIC'    positions = 'LOGISTIC MANAGER'      datofjoin = '20170522')
                        ( employeeid = 2  titles = 'MR'  fname = 'Pawel'     lname = 'Kowalski'  depart = 'IT'          positions = 'FRONTEND DEVELOPER'    datofjoin = '20170524')
                        ( employeeid = 3  titles = 'MRS' fname = 'Anna'      lname = 'Jablonska' depart = 'FINANCE'     positions = 'ADVISER'               datofjoin = '20170711')
                        ( employeeid = 4  titles = 'MR'  fname = 'Piotr'     lname = 'Jankowski' depart = 'LOGISTIC'    positions = 'LOGISTIC'              datofjoin = '20180130')
                        ( employeeid = 5  titles = 'MRS' fname = 'Jadwiga'   lname = 'Krawiec'   depart = 'CONTROLLING' positions = 'TEAM LEADER'           datofjoin = '20180101')
                        ( employeeid = 6  titles = 'MR'  fname = 'Mateusz'   lname = 'Kozlowski' depart = 'Managment'   positions = 'MANAGER'               datofjoin = '20190228')
                        ( employeeid = 7  titles = 'MR'  fname = 'Bartosz'   lname = 'Chwierut'  depart = 'FINANCE'     positions = 'ADVISER'               datofjoin = '20190212')
                        ( employeeid = 8  titles = 'MRS' fname = 'Hanna'     lname = 'Strojna'   depart = 'LOGISTIC'    positions = 'LOGISTIC(INTERNSHIP)' datofjoin = '20190330')
                        ( employeeid = 9  titles = 'MRS' fname = 'Iwona'     lname = 'Kowalik'   depart = 'IT'          positions = 'ABAP DEVELOPER'        datofjoin = '20190310')
                        ( employeeid = 10 titles = 'MRS' fname = 'Barbara'   lname = 'Siwiec'    depart = 'CONTROLLING' positions = 'ADVISER'               datofjoin = '20190402')
                        ( employeeid = 11 titles = 'MRS' fname = 'Monika'    lname = 'Jablonska' depart = 'LOGISTIC'    positions = 'LOGISTIC '             datofjoin = '20190708')
                        ( employeeid = 12 titles = 'MRS' fname = 'Katarzyna' lname = 'Wysocka'   depart = 'FINANCE'     positions = 'ADVISER'               datofjoin = '20200517')
                        ( employeeid = 13 titles = 'MR'  fname = 'Kacper'    lname = 'Lanucha'   depart = 'LOGISTIC'    positions = 'WAREHOUSE MANAGER'     datofjoin = '20200527')
                        ( employeeid = 14 titles = 'MR'  fname = 'Adam'      lname = 'Kowal'     depart = 'IT'          positions = 'IT MANAGER'            datofjoin = '20210905')
                        ( employeeid = 15 titles = 'MRS' fname = 'Patrycja'  lname = 'Gornik'    depart = 'LOGISTIC'    positions = 'LOGISTIC'              datofjoin = '20210917')
                        ( employeeid = 16 titles = 'MR'  fname = 'Tadeusz'   lname = 'Etker'     depart = 'CONTROLLING' positions = 'ADVISER'               datofjoin = '20210911')
                        ( employeeid = 17 titles = 'MR'  fname = 'Kaziemirz' lname = 'Jablonski' depart = 'LOGISTIC'    positions = 'LOGISTIC'              datofjoin = '20220223')
                        ( employeeid = 18 titles = 'MR'  fname = 'Krzysztof' lname = 'Nowak'     depart = 'IT'          positions = 'BACKEND DEVELOPER'     datofjoin = '20220221')
                        ( employeeid = 19 titles = 'MRS' fname = 'Emilia'    lname = 'Krawiec'   depart = 'FINANCE'     positions = 'ADVISER'               datofjoin = '20230113') ).

MODIFY zpemployees FROM TABLE lt_employees.
IF sy-subrc = 0.
  MESSAGE 'OK' TYPE 'S'.
ELSE.
  MESSAGE 'Error' TYPE 'I'.
ENDIF.

CLASS zcl_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS disp_hello_world.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_hello_world IMPLEMENTATION.
  METHOD disp_hello_world.
    DATA lv_string TYPE string.
    DATA lv_name TYPE sy-uname.

    lv_name = cl_abap_syst=>get_user_name( ).
    lv_string = |Hello { lv_name }, welcome to ABAP Development for SAP HANA, w/ Eclipse!|.

    WRITE: lv_string.
  ENDMETHOD.
ENDCLASS.

CLASS zcl_hello_world_bd01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_hello_world_bd01 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( |Hello world BD01 ({ cl_abap_context_info=>get_user_technical_name( ) })| ).
  ENDMETHOD.

ENDCLASS.

/*==========================================

* File Name : projector_app.c

* Purpose : To create a VR headset

* Creation Date : 26.11.2014-18:53:46

* Last Modified :

* Created By :  Codexica

===========================================*/
#include <stdio.h>
#include "projector_app.h"


/*******************************************
 * Main Menu 
 * *****************************************/
void projector_app_run_loop()
{
   
   char choice;

   while (1)
   {
       xil_printf("Codexica Projector Test Menu\n\r");
       xil_printf("1: Laser Driver Menu\n\r"        );
       xil_printf("2: Fraunhofer MEMS Menu\n\r"     );


     choice = inbyte();

     switch (choice)
     {
         case '1':
                  break;
         case '2':
                  break;
         default:
                  break;

     }
   }
}
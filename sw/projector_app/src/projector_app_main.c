/*==========================================

* File Name :projector_app_main.c

* Purpose : To create a VR headset

* Creation Date : 26.11.2014-18:49:09

* Last Modified :

* Created By :  Codexica

===========================================*/

#include "platform.h"
#include "projector_app.h"

int main()
{
	init_platform();

	projector_app_run_loop();

	return 0;
}
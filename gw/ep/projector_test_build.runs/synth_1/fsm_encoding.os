
 add_fsm_encoding \
       {Icache.cache_state} \
       { }  \
       {{0000 00000000010} {0001 00000000100} {0010 00000001000} {0011 00000010000} {0100 00000100000} }

 add_fsm_encoding \
       {DCache_wb__parameterized0.Using_Victim_Cache.victim_state} \
       { }  \
       {{000 000010} {001 000100} {010 001000} {011 010000} {100 100000} }

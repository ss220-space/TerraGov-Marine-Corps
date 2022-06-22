//Byond type ids
#define TYPEID_NULL "0"
#define TYPEID_NORMAL_LIST "f"
//helper macros
#define GET_TYPEID(ref) ( ( (length_char(ref) <= 10) ? "TYPEID_NULL" : copytext_char(ref, 4, -7) ) ) // does it need _char suffix?
#define IS_NORMAL_LIST(L) (GET_TYPEID("\ref[L]") == TYPEID_NORMAL_LIST)

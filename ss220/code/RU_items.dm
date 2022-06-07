SUBSYSTEM_DEF(ru_items)
	name = "ru_items"
	flags = SS_NO_FIRE
	init_order = INIT_ORDER_RU_ITEMS
	runlevels = RUNLEVEL_INIT

//Set to False to not compile
#if TRUE

#include "ru_items_list.dm"

	var/list/items = list(
		/obj/item/ammo_magazine/smg/vector = -1,
		/obj/item/ammo_magazine/packet/acp_smg = -1,
	)

	var/list/items_val = list(
		/obj/item/weapon/gun/smg/vector = -1,
	)


// Override init of vendors
/obj/machinery/vending/Initialize(mapload, ...)
	build_ru_items()
	. = ..()


/obj/machinery/vending/proc/build_ru_items()
	if(istype(src, /obj/machinery/vending/weapon/valhalla))
		products["Imports"] = SSru_items.items_val+SSru_items.items
	else if(istype(src, /obj/machinery/vending/weapon))
		products["Imports"] = SSru_items.items

#endif

SUBSYSTEM_DEF(RU_items)
	name = "RU_items"
	flags = SS_NO_FIRE
	init_order = INIT_ORDER_RU_ITEMS
	runlevels = RUNLEVEL_INIT

	items = list(
		/obj/item/ammo_magazine/smg/vector = -1,
		/obj/item/ammo_magazine/packet/acp_smg = -1,
	)

	items_val = list(
		/obj/item/weapon/gun/smg/vector = -1,
	)


// Override init of vendors
/obj/machinery/vending/Initialize(mapload, ...)
	build_ru_items()
	. = ..()


/datum/controller/subsystem/RU_items/proc/build_ru_items()
	if src in subtypesof(/obj/machinery/vending/weapon)
		products["Imports"] += items


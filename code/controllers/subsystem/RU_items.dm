SUBSYSTEM_DEF(RU_items)
	name = "RU_items"
	flags = SS_NO_FIRE
	init_order = INIT_ORDER_RU_ITEMS
	runlevels = RUNLEVEL_INIT


/obj/machinery/vending/Initialize(mapload, ...)
	build_ru_items()
	. = ..()


/datum/controller/subsystem/RU_items/proc/build_ru_items()

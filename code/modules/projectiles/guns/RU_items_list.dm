//List all custom items here

//Vector, based on KRISS Vector 45ACP.
/obj/item/weapon/gun/smg/vector
	name = "\improper Vector storm submachinegun"
	desc = "The Vector is the TerraGov Marine Corps depelopment to increase assault capability of marines. Lightweight and simple to use. It features delayed blowback system, heavily reducing recoil even with its high ROF. A highly-customizable platform, it is reliable and versatile. Ideal weapon for quick assaults. Uses extended .45 ACP HP magazines"
	fire_sound = 'sound/weapons/guns/fire/tp23.ogg'
	icon = 'icons/Marine/gun64.dmi'
	icon_state = "v45"
	item_state = "v45"
	caliber = CALIBER_45ACP //codex
	max_shells = 25 //codex
	flags_equip_slot = ITEM_SLOT_BACK
	force = 20
	type_of_casings = null
	default_ammo_type = /obj/item/ammo_magazine/smg/vector
	allowed_ammo_types = list(
		/obj/item/ammo_magazine/smg/vector
	)
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/reddot,
		/obj/item/attachable/compensator,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/bayonet,
		/obj/item/attachable/bayonetknife,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/motiondetector,
		/obj/item/attachable/buildasentry,
		/obj/item/attachable/shoulder_mount,
		/obj/item/weapon/gun/pistol/plasma_pistol,
		/obj/item/weapon/gun/shotgun/combat/masterkey,
		/obj/item/weapon/gun/flamer/mini_flamer,
		/obj/item/weapon/gun/grenade_launcher/underslung,
	)

	flags_gun_features = GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER
	gun_firemode_list = list(GUN_FIREMODE_AUTOMATIC)
	attachable_offset = list("muzzle_x" = 33, "muzzle_y" = 16, "rail_x" = 22, "rail_y" = 19, "under_x" = 26, "under_y" = 14, "stock_x" = 24, "stock_y" = 10)
	actions_types = list(/datum/action/item_action/aim_mode)

	fire_delay = 0.1 SECONDS
	damage_mult = 1
	recoil = -5  // Recoil blowback system
	recoil_unwielded = -2
	wield_delay = 0.3 SECONDS

	akimbo_additional_delay = 0.5
	aim_fire_delay = 0.1 SECONDS
	aim_speed_modifier = 0 //no slowdown
	aim_slowdown = 0

	accuracy_mult = 1
	accuracy_mult_unwielded = 0.75 //moving or akimbo yield lower acc
	scatter = -2
	scatter_unwielded = 6 // Not exactly small weapon, and recoil blowback is only for vertical recoil

	movement_acc_penalty_mult = 0.1
	upper_akimbo_accuracy = 5
	lower_akimbo_accuracy = 5


/obj/item/ammo_magazine/smg/vector
	name = "\improper Vector drum magazine (.45ACP)"
	desc = "A .45ACP HP caliber drum magazine for the Vector, with even more dakka."
	default_ammo = /datum/ammo/bullet/smg/acp
	w_class = WEIGHT_CLASS_SMALL
	caliber = CALIBER_45ACP
	icon_state = "ppsh_ext"
	max_rounds = 40 // HI-Point .45 ACP Drum mag


/datum/ammo/bullet/smg/acp
	name = "submachinegun ACP bullet"
	hud_state = "smg"
	hud_state_empty = "smg_empty"
	flags_ammo_behavior = AMMO_BALLISTIC|AMMO_SUNDERING
	accuracy_var_low = 7
	accuracy_var_high = 7
	damage = 20
	accurate_range = 4
	damage_falloff = 1
	sundering = 0.4
	penetration = 0
	shrapnel_chance = 25


/datum/supply_packs/weapons/vector
	name = "Vector"
	contains = list(/obj/item/weapon/gun/smg/vector)
	cost = 20

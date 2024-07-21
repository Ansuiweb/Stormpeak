/datum/job/roguetown/wapprentice
	title = "Magicians Apprentice"
	flag = MAGEAPPRENTICE
	department_flag = YOUNGFOLK
	faction = "Station"
	total_positions = 2
	spawn_positions = 2

	allowed_races = RACES_TOLERATED_UP
	allowed_ages = list(AGE_ADULT)

	tutorial = "Ustan bir zamanlar içindeki potansiyeli görmüştü; son dönemlerdeki çalışmalarıyla hâlâ öyle düşünüp düşünmediğinden emin değilsin. Büyü kullanma yolu, tehlikeli ve kontrolsüz bir yoldur ve bu alanda kendini meslektaş olarak adlandırmana hâlâ on yıllar var. Dinle ve hizmet et, bir gün şapkanı kazanacaksın."
	spells = list(/obj/effect/proc_holder/spell/invoked/projectile/fetch)
	outfit = /datum/outfit/job/roguetown/wapprentice
	
	display_order = JDO_MAGEAPPRENTICE
	give_bank_account = TRUE

	min_pq = 0
	max_pq = null

/datum/outfit/job/roguetown/wapprentice/pre_equip(mob/living/carbon/human/H)
	..()
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt
	pants = /obj/item/clothing/under/roguetown/tights/random	
	belt = /obj/item/storage/belt/rogue/leather/rope
	beltr = /obj/item/keyring/mage
	r_hand = /obj/item/rogueweapon/woodstaff
	if(H.gender == MALE)
		shoes = /obj/item/clothing/shoes/roguetown/simpleshoes
		armor = /obj/item/clothing/suit/roguetown/armor/workervest
		backr = /obj/item/storage/backpack/rogue/satchel
	else
		shoes = /obj/item/clothing/shoes/roguetown/sandals
		armor = /obj/item/clothing/suit/roguetown/armor/workervest
		backr = /obj/item/storage/backpack/rogue/satchel
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/magic/arcane, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/magic/arcane, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/lightningbolt)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/fireball)
	H.change_stat("intelligence", 2)
	H.change_stat("speed", -1)


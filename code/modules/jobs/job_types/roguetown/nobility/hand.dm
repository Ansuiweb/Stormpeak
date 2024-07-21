/datum/job/roguetown/hand
	title = "Hand"
	flag = HAND
	department_flag = NOBLEMEN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	allowed_races = RACES_TOLERATED_UP
	allowed_sexes = list(MALE, FEMALE)
	outfit = /datum/outfit/job/roguetown/hand
	display_order = JDO_HAND
	tutorial = "Her şeyinizi hükümdarınıza borçlusunuz. Bir zamanlar sadece mütevazı bir dostken, şimdi krallığın en önemli adamlarından birisiniz. O kadar uzun süredir soylu aile için casusluk ve sırdaşlık yaptınız ki, entrikalarla dolu bir kasa haline geldiniz ve bu durumu güçlü bir kararlılıkla kullanıyorsunuz. Hiç kimse, kimin kulağına fısıldadığınızı unutmasın. O dudaklarla, herhangi bir kılıç ustasının iddia edebileceğinden daha fazla adam öldürdünüz."
	whitelist_req = TRUE
	give_bank_account = 44
	min_pq = 0
	max_pq = null

/*
/datum/job/roguetown/hand/special_job_check(mob/dead/new_player/player)
	if(!player)
		return
	if(!player.ckey)
		return
	for(var/mob/dead/new_player/Lord in GLOB.player_list)
		if(Lord.mind.assigned_role == "King")
			if(Lord.brohand == player.ckey)
				return TRUE
*/

/datum/outfit/job/roguetown/hand/pre_equip(mob/living/carbon/human/H)
	..()
	pants = /obj/item/clothing/under/roguetown/tights/black
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/guard
	armor = /obj/item/clothing/suit/roguetown/armor/leather/vest/hand
	shoes = /obj/item/clothing/shoes/roguetown/boots
	belt = /obj/item/storage/belt/rogue/leather/hand
	backpack_contents = list(/obj/item/rogueweapon/huntingknife/idagger/steel = 1, /obj/item/keyring/hand = 1)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 2, TRUE)
		H.change_stat("strength", 2)
		H.change_stat("perception", 3)
		H.change_stat("intelligence", 3)
	ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)

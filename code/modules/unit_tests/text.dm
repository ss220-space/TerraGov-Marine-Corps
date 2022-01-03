/datum/unit_test/reject_bad_name_with_ru_cyrillic/Run()
	var/list/words_need_to_reject = list(
		"Тестовое имя",
		"Ґ ґ",
		"Є є",
		"Ї ї",
	)

	var/result = TRUE
	for(var/name as anything in words_need_to_reject)
		var/function_result = reject_bad_name(name, TRUE)
		if(function_result)
			Fail("reject_bad_name with [name] has failed")
			result = FALSE

	TEST_ASSERT(result, "reject_bad_name successfuly reject russian cyrillic")

/datum/unit_test/reject_bad_name_but_allow_ru_cyrillic/Run()
	var/list/words_need_to_reject = list(
		"Black Hall",
		"Илья Кузнецов",
		"Rick Morty",
		"Василий 'Мачете' Титов",
	)

	var/result = TRUE
	for(var/name as anything in words_need_to_reject)
		var/function_result = reject_bad_name(name, TRUE, MAX_NAME_LEN, TRUE, TRUE)
		if(!function_result)
			Fail("reject_bad_name with [name] has failed")
			result = FALSE

	TEST_ASSERT(result, "reject_bad_name successfuly reject english cyrillic")

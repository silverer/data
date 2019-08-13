library(dplyr)
library(psych)
library(survey)

data <- read.csv('masculinity-survey/raw-responses.csv')

#rename variables
names(data) <- c("x", "start_date", "end_date",
                 "how_masc", "how_important_masc", "man_source_1", "man_source_2",
                 "man_source_3", "man_source_4", "man_source_5", "man_source_6",
                 "soc_pressure_bad", "how_often_fr_prof", "how_often_fr_pers",
                 "how_often_fr_aff", "how_often_cry", "how_often_phys_fight",
                 "how_often_sex_women","how_often_sex_men", "how_often_watch_sports",
                 "how_often_workout", "how_often_therapy", "how_often_lonely",
                 "worry_height", "worry_weight", "worry_hairline", "worry_physique",
                 "worry_genitals", "worry_clothes", "worry_sex_perf",
                 "worry_mental_health", "worry_phys_health","worry_finance",
                 "worry_provide", "worry_none", "employment", "adv_money", "adv_serious",
                 "adv_choice", "adv_opps", "adv_praise", "adv_support", "adv_other", 
                 "adv_none", "disadv_women_pref", "disadv_accuse_sh", "disadv_racist_sexist",
                 "disadv_other", "disadv_none", "sh_confront", "sh_hr", "sh_manager",
                 "sh_vic_outreach", "sh_no_response", "sh_never_seen", "sh_other",
                 "sh_why_no_response", "heard_of_metoo", "diff_beh_metoo",
                 "expect_first_move", "pay_on_date", "why_pay_right_thing",
                 "why_pay_more_pay", "why_pay_feel_good", "why_pay_soc_exp",
                 "why_pay_you_asked", "why_pay_way_out", "why_pay_other",
                 "sex_int_body_lang", "sex_int_ask_verbal", "sex_int_make_move",
                 "sex_int_diff_sit", "sex_int_not_clear", "sex_int_other",
                 "sex_bounds_too_far", "sex_bounds_talked_too_far", "sex_bounds_ask_old_partner",
                 "sex_bounds_none", "changed_sex_beh_metoo", "demo_mar_stat", "demo_young_kids",
                 "demo_old_kids", "demo_any_kids",
                 "demo_sex_orient", "demo_race", "demo_ed", "demo_state", "demo_income",
                 "demo_region", "method_survey", "demo_is_white", "demo_is_hispanic", 
                 "demo_most_ed", "demo_has_college",
                 "demo_age_group", "demo_has_kids", "demo_straight", "person_weight")
employed <- dplyr::filter(data, employment == "Employed, working full-time" | employment == "Employed, working part-time")

summary(employed$disadv_accuse_sh)
summary(employed$disadv_racist_sexist)
summary(employed$heard_of_metoo)



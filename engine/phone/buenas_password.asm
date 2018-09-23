BuenaPhoneScript1:
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue BuenaPhoneScript_Rocket
	checkcode VAR_HOUR
	ifgreater 17, BuenaPhoneScript_OnAir1
	scall BuenaPhoneScript_CheckTimeOfDay1
	jump BuenaPhoneScript_Random1

BuenaPhoneScript2:
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue BuenaPhoneScript_Rocket
	scall BuenaPhoneScript_CheckTimeOfDay2
	jump BuenaPhoneScript_Random2

BuenaPhoneScript_CheckTimeOfDay1:
	checktime MORN
	iftrue .morn
	checktime DAY
	iftrue .day
	writetext BuenaPhone1NightText
	buttonsound
	end

.morn
	writetext BuenaPhone1MornText
	buttonsound
	end

.day
	writetext BuenaPhone1DayText
	buttonsound
	end

BuenaPhoneScript_OnAir1:
	writetext BuenaPhone1OnAirText
	end

BuenaPhoneScript_CheckTimeOfDay2:
	checkcode VAR_HOUR
	ifgreater 17, .on_break
	checktime MORN
	iftrue .morn
	checktime DAY
	iftrue .day
	writetext BuenaPhone2NightText
	buttonsound
	end

.morn
	writetext BuenaPhone2MornText
	buttonsound
	end

.day
	writetext BuenaPhone2DayText
	buttonsound
	end

.on_break:
	writetext BuenaPhone2OnBreakText
	buttonsound
	end

BuenaPhoneScript_Rocket:
	writetext BuenaPhoneRocketText
	end

BuenaPhoneScript_Random2:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .PostE4
	random 11
	jump .GossipTopics

.PostE4:
	random 14

.GossipTopics:
	ifequal 0, .dj_ben
	ifequal 1, .receptionist
	ifequal 2, .lucky_number
	ifequal 3, .weight
	ifequal 4, .prof_oak
	ifequal 5, .cold
	ifequal 6, .radiocard
	ifequal 7, .pikachu
	ifequal 8, .director
	ifequal 9, .tea
	ifequal 10, .first_pokemon
	ifequal 11, .lavender_radio
	ifequal 12, .ben_and_fern
	ifequal 13, .mary_and_lily

.dj_ben
	writetext UnknownText_0xa0efb
	jump .finish

.receptionist
	writetext UnknownText_0xa0fcf
	jump .finish

.lucky_number
	writetext UnknownText_0xa109d
	jump .finish

.weight
	writetext UnknownText_0xa1143
	jump .finish

.prof_oak
	writetext UnknownText_0xa1244
	jump .finish

.cold
	writetext UnknownText_0xa1318
	jump .finish

.radiocard
	writetext UnknownText_0xa13d8
	jump .finish

.pikachu
	writetext UnknownText_0xa1488
	jump .finish

.director
	writetext UnknownText_0xa15de
	jump .finish

.tea
	writetext UnknownText_0xa1717
	jump .finish

.first_pokemon
	writetext UnknownText_0xa183d
	jump .finish

.lavender_radio
	writetext UnknownText_0xa19b1
	jump .finish

.ben_and_fern
	writetext UnknownText_0xa1ac0
	jump .finish

.mary_and_lily
	writetext UnknownText_0xa1bed

.finish
	end

BuenaPhoneScript_Random1:
	random 3
	ifequal 0, .game_corner
	ifequal 1, .pokegear
	ifequal 2, .weather

.game_corner
	writetext UnknownText_0xa1c88
	end

.pokegear
	writetext UnknownText_0xa1d5f
	end

.weather
	writetext UnknownText_0xa1e2f
	end

INCLUDE "data/phone/text/buena.asm"

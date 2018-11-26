set_global_assignment -entity "pll_jag" -library "lib_pll_jag" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "pll_jag" -library "lib_pll_jag" -name IP_TOOL_VERSION "17.0"
set_global_assignment -entity "pll_jag" -library "lib_pll_jag" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_pll_jag" -name SPD_FILE [file join $::quartus(sip_path) "pll_jag.spd"]

set_global_assignment -library "lib_pll_jag" -name MISC_FILE [file join $::quartus(sip_path) "pll_jag_sim/pll_jag.vo"]

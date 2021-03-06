/* MIT License
# Inspired from https://github.com/ferhatgec/colorized
# Copyright (c) 2020 Ferhat Geçdoğan All Rights Reserved.
# Distributed under the terms of the MIT License.
#
# */

public class Colorized {
	/* This definitions part of Colorized library */
	public string WRED_COLOR = "\033[0;31m";
	public string WGREEN_COLOR = "\033[0;32m";
	public string  WYELLOW_COLOR = "\033[0;33m";
	public string WBLUE_COLOR = "\033[0;34m";
	public string WMAGENTA_COLOR = "\033[0;35m";
	public string WCYAN_COLOR = "\033[0;36m";
	public string WLIGHT_BLACK_COLOR = "\033[0;90m";
	public string WLIGHT_RED_COLOR = "\033[0;91m";
	public string WLIGHT_GREEN_COLOR = "\033[0;92m";
	public string WLIGHT_YELLOW_COLOR = "\033[0;93m";
	public string WLIGHT_BLUE_COLOR = "\033[0;94m";
	public string WLIGHT_MAGENTA_COLOR = "\033[0;95m";
	public string WLIGHT_CYAN_COLOR = "\033[0;96m";
	public string WLIGHT_WHITE_COLOR = "\033[0;97m";

	/* Default bold** color definitions */
	public string WBOLD_RED_COLOR = "\033[1;31m";
	public string WBOLD_GREEN_COLOR = "\033[1;32m";
	public string WBOLD_YELLOW_COLOR = "\033[01;33m";
	public string WBOLD_BLUE_COLOR = "\033[1;34m";
	public string WBOLD_MAGENTA_COLOR = "\033[1;35m";
	public string WBOLD_CYAN_COLOR = "\033[1;36m";
	public string WBOLD_LIGHT_BLACK_COLOR = "\033[1;90m";
	public string WBOLD_LIGHT_RED_COLOR = "\033[1;91m";
	public string WBOLD_LIGHT_GREEN_COLOR = "\033[1;92m";
	public string WBOLD_LIGHT_YELLOW_COLOR = "\033[1;93m";
	public string WBOLD_LIGHT_BLUE_COLOR = "\033[1;94m";
	public string WBOLD_LIGHT_MAGENTA_COLOR = "\033[1;95m";
	public string WBOLD_LIGHT_CYAN_COLOR = "\033[1;96m";
	public string WBOLD_LIGHT_WHITE_COLOR = "\033[1;97m";

	public string WBOLD_WHITE_COLOR = "\033[1;37m";

	/* Reset (BLACK) */
	public string WBLACK_COLOR = "\033[0m";

	public void RED_COLOR() { print("\033[0;31m"); }
	public void GREEN_COLOR() { print("\033[0;32m"); }
	public void YELLOW_COLOR() { print("\033[0;33m"); }
	public void BLUE_COLOR() { print("\033[0;34m"); }
	public void MAGENTA_COLOR() { print("\033[0;35m"); }
	public void CYAN_COLOR() { print("\033[0;36m"); }
	public void LIGHT_BLACK_COLOR() { print("\033[0;90m"); }
	public void LIGHT_RED_COLOR() { print("\033[0;91m"); }
	public void LIGHT_GREEN_COLOR() { print("\033[0;92m"); }
	public void LIGHT_YELLOW_COLOR() { print("\033[0;93m"); }
	public void LIGHT_BLUE_COLOR() { print("\033[0;94m"); }
	public void LIGHT_MAGENTA_COLOR() { print("\033[0;95m"); }
	public void LIGHT_CYAN_COLOR() { print("\033[0;96m"); }
	public void LIGHT_WHITE_COLOR() { print("\033[0;97m"); }

	public void BOLD_RED_COLOR() { print("\033[1;31m"); }
	public void BOLD_GREEN_COLOR() { print("\033[1;32m"); }
	public void BOLD_YELLOW_COLOR() { print("\033[01;33m"); }
	public void BOLD_BLUE_COLOR() { print("\033[1;34m"); }
	public void BOLD_MAGENTA_COLOR() { print("\033[1;35m"); }
	public void BOLD_CYAN_COLOR() { print("\033[1;36m"); }
	public void BOLD_LIGHT_BLACK_COLOR() { print("\033[1;90m"); }
	public void BOLD_LIGHT_RED_COLOR() { print("\033[1;91m"); }
	public void BOLD_LIGHT_GREEN_COLOR() { print("\033[1;92m"); }
	public void BOLD_LIGHT_YELLOW_COLOR() { print("\033[1;93m"); }
	public void BOLD_LIGHT_BLUE_COLOR() { print("\033[1;94m"); }
	public void BOLD_LIGHT_MAGENTA_COLOR() { print("\033[1;95m"); }
	public void BOLD_LIGHT_CYAN_COLOR() { print("\033[1;96m"); }
	public void BOLD_LIGHT_WHITE_COLOR() { print("\033[1;97m"); }

	public void BOLD_WHITE_COLOR() { print("\033[1;37m"); }
}

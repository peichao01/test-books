/* redirect_ptr.c */
#include "redirect_ptr.h"

static char *msg[] = {
	"Sunday",
	"Monday",
	"Tuesday",
	"Wednesday",
	"Thursday",
	"Friday",
	"Saturday"
};

char *get_a_day(char *pp)
{
	static int i = 0;
	pp = msg[i%7];
	i++;
	return pp;
}

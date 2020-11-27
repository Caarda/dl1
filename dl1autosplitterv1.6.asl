state("flashplayer_32_sa")
{
	int Scene : 0x00C95B64, 0x24, 0xA8C, 0x4, 0x2C, 0x50, 0x264, 0x4C; 
}

startup
{
	refreshRate = 50;
	settings.Add("11", false, "1-1");
	settings.Add("12", false, "1-2");
	settings.Add("13", false, "1-3");
	settings.Add("14", false, "1-4");
	settings.Add("21", false, "2-1");
	settings.Add("22", false, "2-2");
	settings.Add("23", false, "2-3");
	settings.Add("24", false, "2-4");
	settings.Add("31", false, "3-1");
	settings.Add("32", false, "3-2");
	settings.Add("33", false, "3-3");
	settings.Add("34", false, "3-4");
	settings.Add("champRace", true, "Split upon beating the Champion.");
}

start
{	
	if (current.Scene == 8 & old.Scene == 10)
	return true;
}

split
{
	if (settings["champRace"]) 
	{
		if (current.Scene == 52 & old.Scene == 51)
		return true;
	}
	if (settings["11"]) 
	{
		if (current.Scene == 23 & old.Scene == 22)
		return true;
	}
	if (settings["12"])
	{
		if (current.Scene == 25 & old.Scene == 24)
		return true;
	}
	if (settings["13"])
	{
		if (current.Scene == 27 & old.Scene == 26)
		return true;
	}
	if (settings["14"])
	{
		if (current.Scene == 29 & old.Scene == 28)
		return true;
	}
	if (settings["21"]) 
	{
		if (current.Scene == 32 & old.Scene == 31)
		return true;
	}
	if (settings["22"])
	{
		if (current.Scene == 34 & old.Scene == 33)
		return true;
	}
	if (settings["23"])
	{
		if (current.Scene == 36 & old.Scene == 35)
		return true;
	}
	if (settings["24"])
	{
		if (current.Scene == 38 & old.Scene == 37)
		return true;
	}
	if (settings["31"]) 
	{
		if (current.Scene == 41 & old.Scene == 40)
		return true;
	}
	if (settings["32"])
	{
		if (current.Scene == 43 & old.Scene == 42)
		return true;
	}
	if (settings["33"])
	{
		if (current.Scene == 45 & old.Scene == 44)
		return true;
	}
	if (settings["34"])
	{
		if (current.Scene == 47 & old.Scene == 46)
		return true;
	}
}
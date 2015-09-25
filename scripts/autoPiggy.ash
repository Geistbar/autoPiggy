script "autoPiggy.ash"

//   Find the road to the White Citadel, somewhere in Whitey's Grove.

void main()
{
	// Unlock the road
/* 	while (contains_text(visit_url("questlog.php?which=1"),"Find the road to the White Citadel,"))
		adventure(1,$location[Whitey's Grove]);
	if (item_amount($item[opium grenade]) < 10)
		cli_execute("buy 10 opium grenade");
	adventure(11,$location[The Road to the White Citadel]); */
	//adventure(1,$location[The Road to the White Citadel]);
	visit_url("adventure.php?snarfblat=413");
	visit_url("choice.php?pwd&option=3&whichchoice=931");
	visit_url("choice.php?pwd&option=1&whichchoice=931");
	visit_url("choice.php?pwd&option=1&whichchoice=931");
	// Fight witch
	
	// Fucking treasure chamber
	visit_url("choice.php?pwd&option=1&whichchoice=932");
	visit_url("choice.php?pwd&option=1&whichchoice=932");
	visit_url("choice.php?pwd&option=1&whichchoice=932");
	visit_url("choice.php?pwd&option=4&whichchoice=932");
	visit_url("choice.php?pwd&option=2&whichchoice=932");
}
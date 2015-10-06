script "autoPiggy.ash"

//   Find the road to the White Citadel, somewhere in Whitey's Grove.

string log = "questlog.php?which=1";

void main()
{
	// Unlock the road
	while (contains_text(visit_url(log),"Find the road to the White Citadel,"))
		adventure(1,$location[Whitey's Grove]);
	if (item_amount($item[opium grenade]) < 10)
		cli_execute("buy 10 opium grenade");
	if (contains_text(visit_url(log),"You've found the Road to the White Citadel!"))
	{
		print("Failure 1");
		adventure(1,$location[The Road to the White Citadel]);
	}
	if (visit_url(log).contains_text("Make your way through the dark forest"))
	{
		print("Failure 2");
		adventure(1,$location[The Road to the White Citadel]);
	}
	while (contains_text(visit_url(log),"burnouts"))
	{
		print("Failure 3");
		adventure(1,$location[The Road to the White Citadel]);
	}
	while (contains_text(visit_url(log),"terrible biclops guarding the Road"))
	{
		print("Failure 4");
		adventure(1,$location[The Road to the White Citadel]);
	}
	
	// Have to do it directly
	visit_url("adventure.php?snarfblat=413");
	visit_url("choice.php?pwd&option=3&whichchoice=931");
	visit_url("choice.php?pwd&option=1&whichchoice=931");
	visit_url("choice.php?pwd&option=1&whichchoice=931");
	// Fight witch
	run_combat();
	// Fucking treasure chamber
	visit_url("choice.php?pwd&option=1&whichchoice=932");
	visit_url("choice.php?pwd&option=1&whichchoice=932");
	visit_url("choice.php?pwd&option=1&whichchoice=932");
	visit_url("choice.php?pwd&option=4&whichchoice=932");
	visit_url("choice.php?pwd&option=2&whichchoice=932");
}
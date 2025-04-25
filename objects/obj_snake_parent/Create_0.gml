vsp = 0
grav = 0.3
walkspeed = 2

hp = 3
flash = 0
hitfrom = 0
hsp = 0

//Enemy AI
enum e_state
{
	idle,
	chase,
	attack,
	none
}
state = e_state.idle
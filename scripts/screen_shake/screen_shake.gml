/// screen_shake(duration, intensity)
var duration = argument0;
var intensity = argument1;

if (duration > 0)
{
    view_xview[0] += random_range(-intensity, intensity);
    view_yview[0] += random_range(-intensity, intensity);
    duration--;
}
else
{
    view_xview[0] = 0; // Reset view position if needed
    view_yview[0] = 0; // Reset view position if needed
}
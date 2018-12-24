assign [instance="^firefox"] "2"
assign [instance="code"] "3"
assign [instance="anki"] "4"
for_window [instance="code"] focus
for_window [instance="anki"] focus

floating_modifier Mod4

bindsym Mod4+Return exec xst
bindsym Mod4+d exec fish -c "rofi -show combi"
bindsym Mod4+Shift+Return exec firefox-developer-edition
bindsym Mod4+q kill

bindsym Mod4+Left focus left
bindsym Mod4+Down focus down
bindsym Mod4+Up focus up
bindsym Mod4+Right focus right

bindsym Mod4+Shift+Left move left
bindsym Mod4+Shift+Down move down
bindsym Mod4+Shift+Up move up
bindsym Mod4+Shift+Right move right

bindsym Mod4+h split h
bindsym Mod4+v split v
bindsym Mod4+f fullscreen toggle
bindsym Mod4+s layout default
bindsym Mod4+w layout tabbed
bindsym Mod4+e layout toggle split
bindsym Mod4+Shift+space floating toggle
bindsym Mod4+space focus mode_toggle
bindsym Mod4+a focus parent

bindsym Mod4+1 workspace "1"
bindsym Mod4+2 workspace "2"
bindsym Mod4+3 workspace "3"
bindsym Mod4+4 workspace "4"
bindsym Mod4+5 workspace "5"
bindsym Mod4+6 workspace "6"
bindsym Mod4+7 workspace "7"
bindsym Mod4+8 workspace "8"
bindsym Mod4+9 workspace "9"

bindsym Mod4+Shift+1 move container to workspace "1"
bindsym Mod4+Shift+2 move container to workspace "2"
bindsym Mod4+Shift+3 move container to workspace "3"
bindsym Mod4+Shift+4 move container to workspace "4"
bindsym Mod4+Shift+5 move container to workspace "5"
bindsym Mod4+Shift+6 move container to workspace "6"
bindsym Mod4+Shift+7 move container to workspace "7"
bindsym Mod4+Shift+8 move container to workspace "8"
bindsym Mod4+Shift+9 move container to workspace "9"

bindsym Mod4+Shift+c reload
bindsym Mod4+Shift+r restart
bindsym Mod4+Shift+q exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

mode "resize" {
    bindsym Left resize shrink width 10 px or 10 ppt
    bindsym Down resize grow height 10 px or 10 ppt
    bindsym Up resize shrink height 10 px or 10 ppt
    bindsym Right resize grow width 10 px or 10 ppt

    bindsym Return mode "default"
    bindsym Escape mode "default"
    bindsym Mod4+r mode "default"
}
bindsym Mod4+r mode "resize"

bindsym XF86AudioRaiseVolume exec amixer -q set Master 3%+ unmute
bindsym XF86AudioLowerVolume exec amixer -q set Master 3%- unmute
bindsym XF86AudioMute exec amixer -q set Master toggle

bindsym XF86MonBrightnessUp   exec lux -a 20
bindsym XF86MonBrightnessDown exec lux -s 20

font pango:Fira Mono 8
default_border pixel 2
hide_edge_borders smart

set_from_resource $color0  i3wm.color0
set_from_resource $color1  i3wm.color1
set_from_resource $color2  i3wm.color2
set_from_resource $color3  i3wm.color3
set_from_resource $color4  i3wm.color4
set_from_resource $color5  i3wm.color5
set_from_resource $color6  i3wm.color6
set_from_resource $color7  i3wm.color7
set_from_resource $color8  i3wm.color8
set_from_resource $color9  i3wm.color9
set_from_resource $color10 i3wm.color10
set_from_resource $color11 i3wm.color11
set_from_resource $color12 i3wm.color12
set_from_resource $color13 i3wm.color13
set_from_resource $color14 i3wm.color14
set_from_resource $color15 i3wm.color15

client.focused          $color0 $color6 $color0 $color0
client.focused_inactive $color0 $color0 $color0 $color0
client.unfocused        $color0 $color0 $color0 $color0
client.urgent           $color1 $color1 $color1 $color1
client.background       $color0

exec polybar bar

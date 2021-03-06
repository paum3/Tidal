module Sound.Tidal.Simple where

import Sound.Tidal.Context

crunch :: ParamPattern -> ParamPattern
crunch = (# crush 3)

scratch :: ParamPattern -> ParamPattern
scratch = rev . chop 32

louder :: ParamPattern -> ParamPattern
louder = (|*| gain 1.2)

quieter :: ParamPattern -> ParamPattern
quieter = (|*| gain 0.8)

mute :: ParamPattern -> ParamPattern
mute = const silence

jump :: ParamPattern -> ParamPattern
jump = (0.25 <~)

left :: ParamPattern -> ParamPattern
left = (# pan 0)

right :: ParamPattern -> ParamPattern
right = (# pan 1)

higher :: ParamPattern -> ParamPattern
higher = (|*| speed 1.5)

lower :: ParamPattern -> ParamPattern
lower = (|*| speed 0.75)

faster :: ParamPattern -> ParamPattern
faster = hurry 2

slower :: ParamPattern -> ParamPattern
slower = hurry 0.5

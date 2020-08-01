globals [turtlesmoving score1 score2 snake-length1 snake-length2 snake-color1 snake-color2 base-color food-color high-score game-mode]
patches-own [ttl1 ttl2]

;; ------- BACKGROUND SETUP
to setup
  ca
  set game-mode 1
  set turtlesmoving false
  set snake-color1 snakecolor1 * 10 + 7
  set food-color foodcolor * 10 + 5
  set snake-length1 5
  set base-color black
  cro 1 [
    set size 1.5
    set color snake-color1
    set shape "snake head"
  ]
  ask one-of patches with [distancexy 0 0 > 5]
  [set pcolor food-color]
  ask patches with [pxcor = 0 and pycor <= 0 and pycor > 0 - snake-length1]
  [
    set pcolor snake-color1
    set ttl1 snake-length1 + pycor
  ]
end

to setupflowers
  setup
  ask patches with [pcolor = black][set pcolor green - 2]
  set base-color green - 2
  cro 30 [
   set heading 0
   set color yellow
   setxy random 33 - 16 random 33 - 16
   set shape "flower"
   if random 2 = 0
    [set shape "plant"
      set color green - 3]
   set size 2
  ]
end
to setupocean
  setup
  ask patches with [pcolor = black][set pcolor blue - 2]
  set base-color blue - 2
  cro 30 [
    set heading 0
    set color green - 3
    setxy random 33 - 16 random 33 - 16
    set shape "plant"
    if random 3 = 0
    [
      set shape "fish"
      set color random 14 * 10 + 5
    ]
    ask turtle 5 [set shape "turtle"]
    set size 2
  ]
end
to setupgalaxy
  setup
  ask turtle 0 [set shape "snake head in space" set size 2]
  set base-color black
  cro 30 [
    set heading 0
    set color yellow
    setxy random 33 - 16 random 33 - 16
    set shape "star"
    if random 3 = 0 [set size 1.5]
  ]
end
to setupchristmas
  setup
  ask turtle 0 [set shape "snake head christmas"]
  set base-color green - 2
  ask patches with [pcolor = black] [set pcolor green - 2]
  cro 30 [
    set heading 0
    setxy random 33 - 16 random 33 - 16
    set shape "xmastree"
    set size 2
  ]
end
to setuptown
  setup
  ask patches with [pcolor = black][set pcolor gray - 1]
  set base-color gray - 1
  cro 30 [
   set heading 0
   setxy random 33 - 16 random 33 - 16
   set shape "house"
   set size 2
   set color color + 2
   if random 2 = 0
    [
      set shape "person"
      set color white
      set size 1.5
    ]
  ]
end



;; -------- SNAKE ACTIONS
to go
  if not any? turtles [stop]
  if game-mode = 2 [stop]
  set turtlesmoving true
  ask turtle 0 [
	fd 1
	ifelse pcolor = food-color
	[eat]
	[ ifelse pcolor = snake-color1
    [ set turtlesmoving false]
  	[ set pcolor snake-color1
    	snaketimer]
	]
  ]
  if turtlesmoving = false [
    gameover
    stop
  ]
  wait 1 / gamespeed
end

to eat
  set pcolor snake-color1
  set score1 score1 + 1
  	set snake-length1 snake-length1 + 1
  	snaketimer
  	ask one-of patches with [pcolor = base-color] [set pcolor food-color]
end

to snaketimer
  set ttl1 snake-length1 + 1
  ask patches with [ttl1 > 0]
  [set ttl1 ttl1 - 1
	if ttl1 = 0 [set pcolor base-color]
  ]
end

to gameover
  ask patches [
    if pcolor = base-color [set pcolor black]
    if pcolor = food-color [set pcolor black]
  ]
  ask turtle 0 [stamp]
  ct
  ask patch 9 0 [set plabel "GAME OVER!" set plabel-color white]
end

to goup
  if not any? turtles [stop]
  if turtlesmoving = false [stop]
  ask turtle 0 [
   set heading 0
  ]
end
to godown
  if not any? turtles [stop]
  if turtlesmoving = false [stop]
  ask turtle 0 [
   set heading 180
  ]
end
to goright
  if not any? turtles [stop]
  if turtlesmoving = false [stop]
  ask turtle 0 [
   set heading 90
  ]
end
to goleft
  if not any? turtles [stop]
  if turtlesmoving = false [stop]
  ask turtle 0 [
   set heading 270
  ]
end



;; -------- 2 PLAYER BACKGROUND SETUP
to setup2p
  ca
  reset-ticks
  set game-mode 2
  set turtlesmoving false
  set snake-color1 snakecolor1 * 10 + 7
  set snake-color2 snakecolor2 * 10 + 7
  set food-color foodcolor * 10 + 5
  set base-color black
  set snake-length1 5
  set snake-length2 5
  cro 1 [
    set size 1.5
    set color snake-color1
    set shape "snake head"
    set xcor -1
  ]
  cro 1 [
    set size 1.5
    set color snake-color2
    set shape "snake head"
    set xcor 1
  ]
  ask one-of patches with [distancexy 0 0 > 5]
  [set pcolor food-color]
  ask patches with [pxcor = -1 and pycor <= 0 and pycor > 0 - snake-length1]
  [
    set pcolor snake-color1
    set ttl1 snake-length1 + pycor
  ]
  ask patches with [pxcor = 1 and pycor <= 0 and pycor > 0 - snake-length2]
  [
    set pcolor snake-color2
    set ttl2 snake-length2 + pycor
  ]
end

to setupflowers2p
  setup2p
  ask patches with [pcolor = black][set pcolor green - 2]
  set base-color green - 2
  cro 30 [
   set heading 0
   set color yellow
   setxy random 33 - 16 random 33 - 16
   set shape "flower"
   if random 2 = 0
    [set shape "plant"
      set color green - 3]
   set size 2
  ]
end
to setupocean2p
  setup2p
  ask patches with [pcolor = black][set pcolor blue - 2]
  set base-color blue - 2
  cro 30 [
    set heading 0
    set color green - 3
    setxy random 33 - 16 random 33 - 16
    set shape "plant"
    if random 3 = 0
    [
      set shape "fish"
      set color random 14 * 10 + 5
    ]
    ask turtle 5 [set shape "turtle"]
    set size 2
  ]
end
to setupgalaxy2p
  setup2p
  ask turtle 0 [set shape "snake head in space" set size 2]
  ask turtle 1 [set shape "snake head in space" set size 2]
  set base-color black
  cro 30 [
    set heading 0
    set color yellow
    setxy random 33 - 16 random 33 - 16
    set shape "star"
    if random 3 = 0 [set size 1.5]
  ]
end
to setupchristmas2p
  setup2p
  ask turtle 0 [set shape "snake head christmas" ]
  ask turtle 1 [set shape "snake head christmas" ]
  set base-color green - 2
  ask patches with [pcolor = black] [set pcolor green - 2]
  cro 30 [
    set heading 0
    setxy random 33 - 16 random 33 - 16
    set shape "xmastree"
    set size 2
  ]
end
to setuptown2p
  setup2p
  ask patches with [pcolor = black][set pcolor gray - 1]
  set base-color gray - 1
  cro 30 [
   set heading 0
   setxy random 33 - 16 random 33 - 16
   set shape "house"
   set size 2
   set color color + 2
   if random 2 = 0
    [
      set shape "person"
      set color white
      set size 1.5
    ]
  ]
end



;; -------- 2 PLAYER SNAKE ACTIONS

to go2p
  if not any? turtles [stop]
  if game-mode = 1 [stop]
  set turtlesmoving true

  ask turtle 0 [
    fd 1
	ifelse pcolor = food-color
	  [
      eat
    ]
	  [ ifelse pcolor = snake-color1 or pcolor = snake-color2
      [
        set turtlesmoving false
        stamp
        die
      ]
  	  [
        set pcolor snake-color1
    	  snaketimer
      ]
	  ]
  ]



  ask turtle 1 [
    fd 1
	ifelse pcolor = food-color
	  [
      eat2p
    ]
	  [ ifelse pcolor = snake-color1 or pcolor = snake-color2
      [
        set turtlesmoving false
        stamp
        die
      ]
  	  [
        set pcolor snake-color2
    	  snaketimer2p
      ]
	  ]
  ]


  if turtlesmoving = false [
    gameover2p
    stop
  ]
  wait 1 / gamespeed
end

to eat2p
  set pcolor snake-color2
  set score2 score2 + 1
  	set snake-length2 snake-length2 + 1
  	snaketimer2p
  	ask one-of patches with [pcolor = base-color] [set pcolor food-color]
end

to snaketimer2p
  set ttl2 snake-length2 + 1
  ask patches with [ttl2 > 0]
  [set ttl2 ttl2 - 1
	if ttl2 = 0 [set pcolor base-color]
  ]
end

to gameover2p
  ask patches [
      if pcolor = base-color [set pcolor black]
      if pcolor = food-color [set pcolor black]
  ]
  ask turtles with [who > 1] [die]
  if not any? turtles [tie2p stop]
    ask turtles [
     ifelse who = 1
     [winnerp2]
     [winnerp1]
    ]
    ask turtles with [who < 2] [stamp]
  ct
end

to winnerp1
  ask patch 14 0 [set plabel "winner = player 1" set plabel-color white]
end

to winnerp2
  ask patch 14 0 [set plabel "winner = player 2" set plabel-color white]
end

to tie2p
  ask patch 1 0 [set plabel "TIE!" set plabel-color white]
end

to goupp2
  if not any? turtles [stop]
  if turtlesmoving = false [stop]
  ask turtle 1 [
   set heading 0
  ]
end
to godownp2
  if not any? turtles [stop]
  if turtlesmoving = false [stop]
  ask turtle 1 [
   set heading 180
  ]
end
to gorightp2
  if not any? turtles [stop]
  if turtlesmoving = false [stop]
  ask turtle 1 [
   set heading 90
  ]
end
to goleftp2
  if not any? turtles [stop]
  if turtlesmoving = false [stop]
  ask turtle 1 [
   set heading 270
  ]
end
@#$#@#$#@
GRAPHICS-WINDOW
430
10
867
448
-1
-1
13.0
1
40
1
1
1
0
0
0
1
-16
16
-16
16
0
0
1
ticks
30.0

BUTTON
7
139
82
172
normal
setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
5
456
208
489
start/pause singleplayer game
go
T
1
T
OBSERVER
NIL
F
NIL
NIL
1

SLIDER
10
280
413
313
gamespeed
gamespeed
1
10
8.0
1
1
NIL
HORIZONTAL

BUTTON
509
471
564
504
up
goup
NIL
1
T
OBSERVER
NIL
W
NIL
NIL
1

BUTTON
450
506
505
539
left
goleft
NIL
1
T
OBSERVER
NIL
A
NIL
NIL
1

BUTTON
509
507
564
540
down
godown
NIL
1
T
OBSERVER
NIL
S
NIL
NIL
1

BUTTON
569
507
624
540
right
goright
NIL
1
T
OBSERVER
NIL
D
NIL
NIL
1

MONITOR
482
569
598
614
player one score
score1
17
1
11

SLIDER
10
355
413
388
snakecolor1
snakecolor1
1
13
10.0
1
1
NIL
HORIZONTAL

BUTTON
8
176
82
209
flowers
setupflowers
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
5
116
450
134
1. PICK A BACKGROUND -----------------------------------------------
11
0.0
1

TEXTBOX
8
257
458
275
2. CUSTOMIZE --------------------------------------------------------
11
0.0
1

BUTTON
91
139
167
172
ocean
setupocean
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
10
318
413
351
foodcolor
foodcolor
1
13
13.0
1
1
NIL
HORIZONTAL

TEXTBOX
12
435
440
463
3. GOOO! -----------------------------------------------------------
11
0.0
1

SLIDER
224
393
413
426
snakecolor2
snakecolor2
1
13
13.0
1
1
NIL
HORIZONTAL

BUTTON
237
138
317
171
normal
setup2p
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
223
456
412
489
start/pause multiplayer game
go2p
T
1
T
OBSERVER
NIL
H
NIL
NIL
1

MONITOR
715
570
829
615
player two score
score2
17
1
11

BUTTON
742
471
797
504
up
goupp2
NIL
1
T
OBSERVER
NIL
I
NIL
NIL
1

BUTTON
684
508
739
541
left
goleftp2
NIL
1
T
OBSERVER
NIL
J
NIL
NIL
1

BUTTON
743
508
798
541
down
godownp2
NIL
1
T
OBSERVER
NIL
K
NIL
NIL
1

BUTTON
802
508
857
541
right
gorightp2
NIL
1
T
OBSERVER
NIL
L
NIL
NIL
1

TEXTBOX
12
10
384
54
SINGLEPLAYER                  MULTIPLAYER
18
0.0
1

TEXTBOX
515
551
940
579
PLAYER 1         
11
0.0
1

BUTTON
238
175
318
208
flowers
setupflowers2p
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
326
138
408
171
ocean
setupocean2p
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
11
36
161
92
eat food, grow as long as possible, try to get the most points, and beat your high score.
11
0.0
1

TEXTBOX
245
36
425
120
try to kill the other player by running in front of them.\neat food and make yourself longer to trap them and win.
11
0.0
1

BUTTON
91
177
167
210
galaxy
setupgalaxy
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
326
175
408
208
galaxy
setupgalaxy2p
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
745
550
895
568
PLAYER 2
11
0.0
1

BUTTON
238
212
319
245
christmas
setupchristmas2p
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
8
213
82
246
christmas
setupchristmas
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
92
214
167
247
town
setuptown
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
327
213
408
246
town
setuptown2p
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

@#$#@#$#@
## WHAT IS IT?

Classic game of snake, but with singleplayer mode, 2 player mode, themes, and other customizations

## HOW IT WORKS

Singleplayer:
Eat food, grow as long as possible, try to get the most points, and beat your high score.

Multiplayer:
Try to kill the other player by running in front of them. Eat food and make yourself longer to trap them and win.

## HOW TO USE IT

Follow the steps in order. After pressing start, use WASD for player 1 and IJKL for player 2 to control your snake.

## CREDITS AND REFERENCES

Developer: Amy Mai
Bug Testers: Maret Rudin-Aulenbach, David
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 90 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120
Rectangle -7500403 true true 45 120 255 180
Rectangle -7500403 true true 210 120 255 285

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

snake head
true
0
Rectangle -7500403 true true 60 90 240 270
Circle -7500403 true true 60 15 180
Circle -1 true false 30 45 90
Circle -1 true false 180 45 90
Circle -7500403 true true 45 60 30
Circle -16777216 true false 210 105 0
Circle -7500403 true true 195 60 30

snake head christmas
true
0
Rectangle -7500403 true true 60 105 240 285
Circle -7500403 true true 60 30 180
Circle -1 true false 30 60 90
Circle -1 true false 180 60 90
Circle -7500403 true true 45 75 30
Circle -16777216 true false 210 105 0
Circle -7500403 true true 195 75 30
Polygon -7500403 true true 105 60 120 60 180 60 120 60 120 45 135 45 135 45 150 45 165 45 165 45 165 45 180 60
Circle -2674135 true false 118 13 62
Polygon -6459832 true false 105 165 60 165 60 180 30 180 30 195 15 195 15 210 30 210 45 210 45 195 75 195 75 180 105 180 105 165 90 180 90 180
Polygon -6459832 true false 195 165 240 165 240 180 270 180 270 195 285 195 285 210 270 210 255 210 255 195 225 195 225 180 195 180 195 165
Polygon -6459832 true false 60 195 60 225 75 225 75 195
Polygon -6459832 true false 60 225 45 225 45 240 30 240 30 255 45 255 45 240 60 240 60 225
Polygon -6459832 true false 225 195 225 225 240 225 240 240 255 240 255 255 270 255 270 240 255 240 255 225 240 225 240 210 240 195
Rectangle -6459832 true false 75 180 90 195
Rectangle -6459832 true false 210 180 225 195
Rectangle -6459832 true false 60 225 75 240
Rectangle -6459832 true false 45 240 60 255
Rectangle -6459832 true false 225 225 240 240
Rectangle -6459832 true false 240 240 255 255

snake head in space
true
0
Circle -1 false false 13 13 272
Rectangle -7500403 true true 60 135 240 315
Circle -7500403 true true 60 75 180
Circle -1 true false 30 105 90
Circle -1 true false 180 105 90
Circle -7500403 true true 45 120 30
Circle -16777216 true false 210 105 0
Circle -7500403 true true 195 120 30
Rectangle -1 true false 45 240 255 285

snake head v2
true
0
Rectangle -7500403 true true 60 105 240 285
Circle -7500403 true true 60 30 180
Circle -16777216 true false 210 105 0
Polygon -7500403 true true 105 60 120 60 180 60 120 60 120 45 135 45 135 45 150 45 165 45 165 45 165 45 180 60
Circle -2674135 true false 88 43 122
Rectangle -7500403 true true 75 90 225 180
Circle -1 true false 30 60 90
Circle -1 true false 180 60 90
Circle -7500403 true true 45 75 30
Circle -7500403 true true 195 75 30

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270

xmastree
false
0
Polygon -1184463 true false 150 0 120 45 180 45 150 0
Polygon -1184463 true false 120 15 150 45 180 15 120 15
Rectangle -6459832 true false 120 195 180 300
Polygon -13840069 true false 150 30 75 105 105 105 60 150 90 150 45 210 75 210 30 270 270 270 225 210 255 210 210 150 240 150 195 105 225 105 150 30 120 135
Circle -14835848 true false 75 225 30
Circle -14835848 true false 165 120 30
Circle -2674135 true false 180 210 30
Circle -2674135 true false 105 75 30
Circle -2674135 true false 75 150 30
@#$#@#$#@
NetLogo 6.1.0
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@

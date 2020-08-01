breed [darts dart]
darts-own [ttl-darts lifespan]
breed [dartmonkeys dartmonkey]
dartmonkeys-own [shooting]

breed [cannons cannon]
cannons-own [shooting]
breed [bombs bomb]
bombs-own [ttl-bombs lifespan]

breed [supermonkeys supermonkey]
darts2-own [ttl-darts lifespan]
breed [darts2 dart2]
supermonkeys-own [shooting]
plasmas-own [ttl-plasma lifespan]
breed [plasmas plasma]

breed [bloons bloon]
bloons-own [health]

globals [xb yb round# currency lives gameover? bomblvl dartlvl dartlvl2]

to setup
  ca
  ask patches [
    set pcolor black
  ]
  ask patches with [pxcor = 0][
    set pcolor yellow
  ]
  ask patches with [pxcor < -4 or pxcor > 4][
    set pcolor 53
  ]
  repeat 50 [ask patch (random 10 - 14) (random 33 - 16) [sprout 1 [set shape "tree" set size 3 set color 52]]]
  repeat 50 [ask patch (random 10 + 5) (random 33 - 16) [sprout 1 [set shape "tree" set size 3 set color 52]]]
  set round# 0
  set currency 200
  set lives 150
  set gameover? 0
  set dartlvl2 1
  set bomblvl 1
  set dartlvl 1
  set-default-shape darts "dart"
  set-default-shape darts2 "dart"
  set-default-shape dartmonkeys "dartmonkey"
  set-default-shape bloons "bloon"
  set-default-shape bombs "bomb"
  set-default-shape cannons "cannon"
  set-default-shape supermonkeys "supermonkey"
  set-default-shape plasmas "plasma"
end

to go
  if gameover? = 1 [stop]
  ifelse not any? turtles []
  [
    ifelse not any? bloons
    [
      set round# round# + 1
      rounds
    ]
    [
      go-bloons
      go-cannon
      go-bombs
      go-dartmonkey
      go-darts
      go-supermonkey
      go-darts2
      go-plasma
      go-bananatree
    ]
  ]
end


to rounds
  ifelse round# < 15 [
    repeat round# [
      create-bloons 1 [
        set health round#
        set color ((health * 10) + 5)
        set size 3
        setxy 0 16
        set heading 180
        go-bloons
      ]
    ]
  ]
  [
    repeat (floor (round# / 5)) [
      create-bloons 1 [
        set shape "blimp"
        set health round# * 4
        set size 10
        setxy 0 16
        set heading 180
        go-bloons
      ]
    ]
  ]
end

;popping--------------------------------------------------------------------
to pop
  ask bloons in-radius .8 [
    ask darts in-radius .8 [die]
    set health health - dartlvl wait .01
    set color ((health * 10) + 5)
    set currency currency + 2
    if health < 1
    [
      die
    ]
  ]
end

to pop2
  ask bloons in-radius .8 [
    ask darts in-radius .8 [die]
    ask bombs in-radius .5 [die]
    set health health - dartlvl2 wait .01
    set color ((health * 10) + 5)
    set currency currency + 2
    if health < 1
    [
      die
    ]
  ]
end

to blow
  ask bloons in-radius .8 [
    ask bombs in-radius .8 [die]
    set health health - bomblvl wait .01
    set color ((health * 10) + 5)
    set currency currency + 2
    if health < 1
    [
      die
    ]
  ]
end

;place----------------------------------------------------------------------
to place-dartmonkey
  if gameover? = 1 [stop]
  if mouse-down? [
    ifelse ((mouse-xcor < 0 and mouse-xcor > -5) or (mouse-xcor > 0 and mouse-xcor < 5))
    [
      if currency < 100 [stop]
      create-dartmonkeys 1 [
        setxy mouse-xcor mouse-ycor
        set size 3
        set color brown + 1
      ]
      set currency currency - 100
      stop
    ]
    [
      stop
    ]
  ]
end

to place-cannon
  if gameover? = 1 [stop]
  if mouse-down? [
    ifelse ((mouse-xcor < 0 and mouse-xcor > -5) or (mouse-xcor > 0 and mouse-xcor < 5))
    [
      if currency < 400 [stop]
      create-cannons 1 [
        setxy mouse-xcor mouse-ycor
        set size 4
      ]
      set currency currency - 400
      stop
    ]
    [
      stop
    ]
  ]
end

to place-supermonkey
  if gameover? = 1 [stop]
  if mouse-down? [
    ifelse ((mouse-xcor < 0 and mouse-xcor > -5) or (mouse-xcor > 0 and mouse-xcor < 5))
    [
      if currency < 1000 [stop]
      create-supermonkeys 1 [
        setxy mouse-xcor mouse-ycor
        set size 3
        set color brown + 1
      ]
      set currency currency - 1000
      stop
    ]
    [
      stop
    ]
  ]
end

to place-bananatree
  if gameover? = 1 [stop]
  if currency < 300 [stop]
  if not any? turtles with [shape = "tree"] [stop]
    ask one-of turtles with [shape = "tree"] [set shape "bananatree"]
    set currency currency - 300
    stop
end


;go-------------------------------------------------------------------------
to go-bloons
  ask bloons [set xb xcor set yb ycor]
  every 1[
  ask bloons [
    fd 1
    if ycor < -15 [
      set lives (lives - health) die
    ]
    if lives < 1 [ask patch 5 0 [set plabel "GAME OVER!"] set gameover? 1 set lives 0]
  ]
  ]
end

to go-dartmonkey
  every 1[
    ask dartmonkeys [
      ifelse count bloons in-radius 6 = 0 [set shooting "false"]
      [
        set shooting "true"
        ask dartmonkeys with [shooting = "true"] [
          set heading towardsxy xb yb
          hatch-darts 1[
            set color gray - 2
            set ttl-darts timer
            set lifespan .2
          ]
          if dartlvl >= 2 [
            hatch-darts 1[
            set color gray - 2
            set ttl-darts timer
            set lifespan .2
            set heading heading - 15
          ]
          ]
          if dartlvl >= 4 [
            hatch-darts 1[
              set color gray - 2
              set ttl-darts timer
              set lifespan .2
              set heading heading + 15
            ]
          ]
          if dartlvl >= 8 [
            hatch-darts 1[
              set color gray - 2
              set ttl-darts timer
              set lifespan .2
              set heading heading + 30
            ]
            hatch-darts 1[
              set color gray - 2
              set ttl-darts timer
              set lifespan .2
              set heading heading - 30
            ]
          ]
        ]
      ]
    ]
  ]
end

to go-darts
  every .02 [
    ask darts[
      fd .6
      pop
      if timer - ttl-darts > lifespan [die]
    ]
  ]
end

to go-cannon
  every 1[
    ask cannons [
      ifelse count bloons in-radius 8 = 0 [set shooting "false"]
      [
        set shooting "true"
        ask cannons  with [shooting = "true"] [
          set heading towardsxy xb yb
          hatch-bombs 1[
            set size 2
            set ttl-bombs timer
            set lifespan .2
          ]
        ]
      ]
    ]
  ]
end

to go-bombs
  every .02 [
    ask bombs[
      fd .6
      blow
      if timer - ttl-bombs > lifespan [die]
    ]
  ]
end

to go-supermonkey
  ifelse dartlvl2 < 3 [
    every .3[
      ask supermonkeys [
        ifelse count bloons in-radius 12 = 0 [set shooting "false"]
        [
          set shooting "true"
          ask supermonkeys with [shooting = "true"] [
            set heading towardsxy xb yb
            hatch-darts2 1[
              set color gray - 2
              set ttl-darts timer
              set lifespan .5
            ]
          ]
        ]
      ]
    ]
  ]
  [
    ifelse dartlvl2 < 5[
      every .01[
        ask supermonkeys [
          ifelse count bloons in-radius 20 = 0 [set shooting "false"]
          [
            set shooting "true"
            ask supermonkeys with [shooting = "true"] [
              set heading towardsxy xb yb
              hatch-plasmas 1[
                set ttl-plasma timer
                set lifespan 1
              ]
            ]
          ]
        ]
      ]
    ]
    [
      every .001[
        ask supermonkeys [
          ifelse count bloons in-radius 20 = 0 [set shooting "false"]
          [
            set shooting "true"
            ask supermonkeys with [shooting = "true"] [
              set heading towardsxy xb yb
              hatch-plasmas 1[
                set ttl-plasma timer
                set lifespan 1
              ]
            ]
          ]
        ]
      ]
    ]
  ]
end

to go-darts2
  every .02 [
    ask darts2 [
      fd 1
      pop2
      if timer - ttl-darts > lifespan [die]
    ]
  ]
end

to go-plasma
  every .02 [
    ask plasmas [
      fd 1
      pop
      if timer - ttl-plasma > lifespan [die]
    ]
  ]
end

to go-bananatree
  every 8 [ask turtles with [shape = "bananatree"] [set currency currency + 20]]
end

;upgrades-------------------------------------------------------------------------------------
to upgrade-dartmonkeys
  if gameover? = 1 [stop]
  if currency < 200 [stop]
  set dartlvl dartlvl + 1
  set currency currency - 200
end

to upgrade-cannons
  if gameover? = 1 [stop]
  if currency < 200 [stop]
  set bomblvl bomblvl + 1
  set currency currency - 200
end

to upgrade-supermonkeys
  if gameover? = 1 [stop]
  if currency < 400 [stop]
  set dartlvl2 dartlvl2 + 2
  set currency currency - 400
end




@#$#@#$#@
GRAPHICS-WINDOW
211
55
648
493
-1
-1
13.0
1
22
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
41
97
200
130
run game
go
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
568
162
637
207
NIL
currency
17
1
11

BUTTON
114
205
197
257
monkey
place-dartmonkey
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
40
57
200
90
NIL
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

TEXTBOX
14
62
34
84
1.
18
0.0
1

TEXTBOX
15
102
33
124
2.
18
0.0
1

TEXTBOX
16
144
178
162
3. Place towers
18
0.0
1

MONITOR
568
66
637
111
round
round#
17
1
11

TEXTBOX
17
198
111
268
dartmonkeys:\nrange: low\nspeed: medium\npower: low\ncost: $100
11
0.0
1

TEXTBOX
6
166
239
202
choose a tower below, then click \nand hold on a spot on the screen
11
0.0
1

MONITOR
568
114
637
159
NIL
lives
17
1
11

BUTTON
113
283
197
335
cannon
place-cannon
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
17
274
114
344
cannons:\nrange: low\nspeed: medium\npower: medium\ncost: $400
11
0.0
1

BUTTON
674
128
779
173
dartmonkeys
upgrade-dartmonkeys
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
673
211
778
256
cannons
upgrade-cannons
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
783
128
842
173
tier
dartlvl
17
1
11

MONITOR
783
211
842
256
tier
bomblvl
17
1
11

TEXTBOX
676
54
826
76
4. Upgrades
18
0.0
1

TEXTBOX
216
15
661
60
BLOONS TOWER DEFENSE
35
0.0
1

BUTTON
111
363
197
415
supermonkey
place-supermonkey
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
673
298
779
344
supermonkeys
upgrade-supermonkeys
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
784
299
844
344
tier
dartlvl2
17
1
11

TEXTBOX
16
352
166
422
supermonkeys:\nrange: high\nspeed: fast\npower: low\ncost: $1000
11
0.0
1

TEXTBOX
676
112
826
130
upgrade cost: $200
11
0.0
1

TEXTBOX
675
196
825
214
upgrade cost: $200
11
0.0
1

TEXTBOX
677
283
827
301
upgrade cost: $1000
11
0.0
1

BUTTON
110
440
197
494
bananatree
place-bananatree
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
17
445
167
487
bananatrees:\nspeed: slow\ncost: $800
11
0.0
1

TEXTBOX
662
76
812
104
this upgrades ALL towers of that type
11
0.0
1

@#$#@#$#@
## BLOONS TOWER DEFENSE

This is a tower defense type game where you pop all the balloons before they reach the end of the path.

Popping balloons gives you money that you can spend to build more defenses.

## LIMITATIONS
- If they reach the end of the path, your lives go down depending on the health remaining on the balloon
- If your lives go to 0, you lose
- You can only place towers on the road

## BLOONS
- The color of the balloon reflects balloon health (amount of layers on the balloon)
- Round 1-14 ballons are normal and range from 1 layer - 14 layers
- The # of balloons in rounds 1-14 increase based on round
- blimps appear in rounds 15+; they have ever-increasing health


## TOWERS

dartmonkeys: 
- shoot darts
- slower pace
- low power

cannons:
- shoot cannonballs
- slower pace
- more power than dartmonkeys

supermonkeys:
- shoots a steady stream of darts

bananatrees:
- increases currency by 20 every 8 seconds

## TOWER UPGRADES

dartmonkey upgrades:
- + 1 layer removed per throw with every upgrade
- tier 2: 2x darts per shot
- tier 4: 3x darts per shot
- tier 8: 5x darts per shot

cannon upgrades:
- + 1 layer removed per throw with every upgrade

dartmonkey upgrades:
- + 1 layer removed per throw with every upgrade
- tier 3: plasma blast! spews plasma everywhere; super powerful

bananatree upgrades:
- + 10 currency every 8 seconds

## CHEATS
Hi Mr. Brooks! IDK if you're going to read this but since you probably have a lot of projects to grade, here are some shortcuts so you can get to all the features:

- set currency #: change your currency so you can never go broke
- set round# #: makes rounds more or less difficult
- set lives #: make yourself invincible

## CREDITS
- this is based off of the game series Bloons TD
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

bananatree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152
Polygon -1184463 true false 104 124 100 126 96 139 98 145 104 158 114 165 133 165 113 151 109 142 109 130 106 125
Polygon -1184463 true false 102 123 94 118 81 133 79 163 93 172 92 154 101 166 107 169 114 169 108 161 106 149
Polygon -1184463 true false 149 32 141 27 128 42 126 72 140 81 139 63 148 75 154 78 161 78 155 70 153 58
Polygon -1184463 true false 150 31 146 33 142 46 144 52 150 65 160 72 179 72 159 58 155 49 155 37 152 32
Polygon -1184463 true false 197 147 189 142 176 157 174 187 188 196 187 178 196 190 202 193 209 193 203 185 201 173
Polygon -1184463 true false 207 137 199 132 186 147 184 177 198 186 197 168 206 180 212 183 219 183 213 175 211 163

blimp
true
0
Polygon -13791810 true false 150 18 166 20 188 31 204 50 218 72 225 93 229 134 229 157 223 188 211 217 195 234 175 245 159 249 149 251
Polygon -13791810 true false 150 18 134 20 112 31 96 50 82 72 75 93 71 134 71 157 77 188 89 217 105 234 125 245 141 249 151 251
Polygon -1 true false 152 251 137 241 127 230 124 216 126 207 129 207 136 210 144 220 152 229 155 242 154 249
Polygon -1 true false 143 248 162 237 180 234 193 234 197 237 196 241 189 248 174 254 162 256 152 256 146 253
Polygon -1 true false 151 244 142 247 133 252 126 263 120 275 121 283 125 286 136 279 144 270 151 260 154 247
Circle -2674135 true false 113 81 74
Polygon -2674135 true false 149 151 137 171 161 172 149 150

bloon
false
1
Circle -2674135 true true 63 48 175
Polygon -2674135 true true 150 225 120 255 180 255 150 225
Rectangle -2674135 true true 142 222 157 236

bomb
true
0
Polygon -2674135 true false 125 66 98 38 121 44 122 6 154 36 170 3 174 40 207 34 173 72
Polygon -955883 true false 133 64 124 51 140 56 141 35 160 49 177 45 175 58 166 69
Circle -16777216 true false 45 75 210
Rectangle -16777216 true false 105 60 195 90

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

cannon
true
6
Polygon -2674135 true false 120 75 105 45 135 45 150 15 165 45 195 45 180 90
Polygon -955883 true false 129 76 122 53 146 67 148 43 157 65 178 60 160 87
Circle -16777216 true false 88 133 124
Polygon -16777216 true false 105 75 75 195 225 195 195 75
Rectangle -7500403 true false 75 150 90 225
Rectangle -7500403 true false 210 150 225 225

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

dart
true
14
Circle -1184463 true false 120 165 30
Circle -1184463 true false 150 165 30
Polygon -7500403 true false 135 135 150 75 165 135
Circle -16777216 true true 120 120 60

dartmonkey
true
0
Rectangle -7500403 true true 46 123 67 178
Rectangle -7500403 true true 233 123 254 179
Circle -6459832 true false 63 63 175
Polygon -6459832 true false 135 232 130 237 126 245 126 251 127 259 130 262 133 266 138 270 138 273 137 281 134 284 136 294 148 295 150 291 152 284 152 274 150 265 146 260 143 256 142 252 145 246 154 234
Polygon -7500403 true true 112 77 105 82 93 90 85 99 80 109 78 116 88 124 106 125 128 124 138 117 150 108 156 118 164 122 178 125 193 125 209 121 218 113 218 104 211 95 189 77 165 69 150 69 130 71 117 75
Circle -16777216 true false 189 90 16
Circle -16777216 true false 93 92 16
Polygon -2674135 true false 66 126 84 139 100 144 125 147 162 149 200 146 215 141 225 136 234 126 237 137 237 150 237 157 222 167 203 172 179 176 147 178 110 174 86 166 63 154 62 136 66 125

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
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

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

plasma
true
0
Circle -5825686 true false 55 55 190
Circle -2064490 true false 74 74 153
Circle -2674135 true false 129 129 42

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

supermonkey
true
0
Rectangle -7500403 true true 46 123 67 178
Rectangle -7500403 true true 233 123 254 179
Circle -13791810 true false 63 63 175
Polygon -6459832 true false 135 232 130 237 126 245 126 251 127 259 130 262 133 266 138 270 138 273 137 281 134 284 136 294 148 295 150 291 152 284 152 274 150 265 146 260 143 256 142 252 145 246 154 234
Polygon -7500403 true true 112 77 105 82 93 90 85 99 80 109 78 116 88 124 106 125 128 124 138 117 150 108 156 118 164 122 178 125 193 125 209 121 218 113 218 104 211 95 189 77 165 69 150 69 130 71 117 75
Circle -16777216 true false 189 90 16
Circle -16777216 true false 93 92 16
Polygon -2674135 true false 60 150 45 285 255 285 240 150 60 150
Polygon -1184463 true false 177 189 171 180 167 174 160 170 152 169 144 168 135 172 128 176 123 186 122 196 124 203 131 211 138 215 147 218 154 224 154 235 146 239 135 237 125 226 113 235 126 252 139 259 161 256 171 246 173 233 173 219 165 210 153 204 143 196 142 185 144 184 151 186 157 192 162 197

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

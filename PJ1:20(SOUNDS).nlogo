extensions [sound]
globals []



to rainforest
  ;animation
  if state != "rainforest" [stop]
  every 200 [
    ca
    ask patches [set pcolor 102]
    cro 10 [
      set shape "tree3"
      set size 45
      setxy random 48 - 23 random 5
      set color one-of [53 54 63 64 73 74]
    ]
    cro ceiling volume / 15 [
      set shape "raindrop"
      set heading 0
      set size 2
      setxy random 49 - 24 random 31 - 15
    ]
  ]
  cro ceiling volume / 15 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]
  if volume < 10 [if random 5 = 0 [cro 1 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]]]
  ask turtles with [shape = "raindrop"] [set ycor ycor - 1 if ycor < -14 [die]]

  ;raindrops
  if state != "rainforest" [stop]
  ifelse random 5 = 0 and volume < 50
  [sound:play-note "acoustic grand piano" random 5 + 120 volume * 2 2]
  [if random 7 = 0 and volume < 80 [sound:play-note "acoustic grand piano" random 5 + 120 volume 2]]
  sound:play-note "applause" 60 volume / 4 + 10 .5
  wait (1 / ((random 30) + 20))

  if volume < 10 [if random 5 = 0 [cro 1 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]]]
  cro ceiling volume / 15 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]
  ask turtles with [shape = "raindrop"] [set ycor ycor - 1 if ycor < -14 [die]]
  sound:play-note "seashore" 50 volume + 10 .5
  wait (1 / ((random 30) + 20))

  if volume < 10 [if random 5 = 0 [cro 1 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]]]
  cro ceiling volume / 15 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]
  ask turtles with [shape = "raindrop"] [set ycor ycor - 1 if ycor < -14 [die]]
  sound:play-note "woodblock" 60 volume / 2 + 10 .5
  wait (1 / ((random 30) + 20))

  if volume < 10 [if random 5 = 0 [cro 1 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]]]
  cro ceiling volume / 15 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]
  ask turtles with [shape = "raindrop"] [set ycor ycor - 1 if ycor < -14 [die]]
  sound:play-drum "chinese cymbal" volume / 4 + 10
  wait (1 / ((random 30) + 20))

  if volume < 10 [if random 5 = 0 [cro 1 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]]]
  cro ceiling volume / 15 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]
  ask turtles with [shape = "raindrop"] [set ycor ycor - 1 if ycor < -14 [die]]

  if volume > 50 [
    repeat 3[
      if volume < 10 [if random 5 = 0 [cro 1 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]]]
      cro ceiling volume / 15 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]
      ask turtles with [shape = "raindrop"] [set ycor ycor - 1 if ycor < -14 [die]]
      sound:play-note "applause" 60 volume / 4 + 10 .5
      wait (1 / ((random 30) + 20))

      if volume < 10 [if random 5 = 0 [cro 1 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]]]
      cro ceiling volume / 15 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]
      ask turtles with [shape = "raindrop"] [set ycor ycor - 1 if ycor < -14 [die]]
      sound:play-note "seashore" 50 volume + 10 .5
      wait (1 / ((random 30) + 20))

      if volume < 10 [if random 5 = 0 [cro 1 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]]]
      cro ceiling volume / 15 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]
      ask turtles with [shape = "raindrop"] [set ycor ycor - 1 if ycor < -14 [die]]
      sound:play-note "woodblock" 60 volume / 2 + 10 .5
      wait (1 / ((random 30) + 20))

      if volume < 10 [if random 5 = 0 [cro 1 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]]]
      cro ceiling volume / 15 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]
      ask turtles with [shape = "raindrop"] [set ycor ycor - 1 if ycor < -14 [die]]
      sound:play-drum "chinese cymbal" volume / 4 + 10
      wait (1 / ((random 30) + 20))

      if volume < 10 [if random 5 = 0 [cro 1 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]]]
      cro ceiling volume / 15 [set shape "raindrop" set heading 0 set size 2 setxy random 48 - 23 16]
      ask turtles with [shape = "raindrop"] [set ycor ycor - 1 if ycor < -14 [die]]
    ]
  ]
  ;birds
  every .5 [if random 10 = 1 [sound:play-note "flute" 105 volume / 1.5 .07 wait .1 sound:play-note "flute" 100 volume / 1.5 .1]]
  every .5 [if random 10 = 1 [sound:play-note "bird tweet" 81 volume / 1.5 .1 wait .11 sound:play-note "bird tweet" 85 volume / 1.5 .1]]
  every .5 [if random 10 = 1 [sound:play-note "bird tweet" 70 volume / 1.5 1]]
  every .5 [if random 10 = 1 [sound:play-note "bird tweet" 105 volume / 1.5 .07 wait .1 sound:play-note "flute" 105 volume / 1.5 .1]]

  ;music
  every 6 [
    ifelse random 4 = 0 [e4 5.5 volume / 2 db5 5.5 volume / 2 sound:play-note "violin" 73 volume / 2 6]
    [ifelse random 3 = 0
      [f4 5.5 volume / 2 d5 5.5 volume / 2 sound:play-note "violin" 74 volume / 2 6]
      [ifelse random 2 = 0
        [db4 5.5 volume / 2 a5 5.5 volume / 2 sound:play-note "violin" 69 volume / 2 6]
        [e4 5.5 volume / 2 db5 5.5 volume / 2 sound:play-note "violin" 73 volume / 2 6]
      ]
    ]
  ]
end

to sunrise
  if state != "sunrise" [stop]
  ca
  ask patches with [pycor <= 0] [set pcolor 11]
  ask patches with [pycor > 0] [set pcolor 21]
  ask patches with [pycor > 8] [set pcolor 41]
  ask patches with [pycor > 12] [set pcolor 101]
  cro 1 [set shape "circle" set size 3 set color 48 setxy 0 -7]
  cro 1 [set shape "horizon" set size 60 set color 50 setxy 0 10]
  cro 5 [set shape "tree" set size 2 set color 50 setxy random 48 - 23 -4]
  cro 2 [set shape "cloud" set size 6 set color 2.9 setxy random 48 - 23 random 5 + 10 set heading 0]
  if state != "sunrise" [stop]

  pg1s
  ask patches [set pcolor pcolor + 1]
  ask turtle 0 [set ycor ycor + 1]
  ask turtle 1 [set color color + 1]
  ask turtles with [shape = "cloud" or shape = "tree"] [set color color + 1]
  if state != "sunrise" [stop]
  pg2s
  ask patches [set pcolor pcolor + 1]
  ask turtle 0 [set ycor ycor + 1]
  ask turtle 1 [set color color + 1]
  if state != "sunrise" [stop]
  pg3s
  ask patches [set pcolor pcolor + 1]
  ask patches with [pycor = 8 or pycor = 7] [set pcolor 44]
  ask patches with [pycor = 12] [set pcolor 104]
  ask patches with [pycor = 0] [set pcolor 24]
  ask turtle 0 [set ycor ycor + 1]
  ask turtle 1 [set color color + 1]
  ask turtles with [shape = "cloud" or shape = "tree"] [set color color + 1]
  if state != "sunrise" [stop]
  pg4s
  ask patches [set pcolor pcolor + 1]
  ask patches with [pycor = 6] [set pcolor 45]
  ask patches with [pycor = 11] [set pcolor 105]
  ask patches with [pycor = -1] [set pcolor 25]
  ask turtle 0 [set ycor ycor + 1]
  ask turtle 1 [set color color + 1]
  ask turtles with [shape = "cloud" or shape = "tree"] [set color color + 1]
  if state != "sunrise" [stop]
  pg5s
  ask patches [set pcolor pcolor + 1]
  ask patches with [pycor = 5] [set pcolor 46]
  ask patches with [pycor = 10] [set pcolor 106]
  ask patches with [pycor = -2] [set pcolor 26]
  ask turtle 0 [set ycor ycor + 1]
  ask turtle 1 [set color color + 1]
  ask turtles with [shape = "cloud" or shape = "tree"] [set color color + 1]
  if state != "sunrise" [stop]
  pg6s
  ask patches [set pcolor pcolor + 1]
  ask patches with [pycor = 4] [set pcolor 47]
  ask patches with [pycor = 9] [set pcolor 107]
  ask patches with [pycor = -3] [set pcolor 27]
  ask turtle 0 [set ycor ycor + 1]
  ask turtle 1 [set color color + 1]
  ask turtles with [shape = "cloud" or shape = "tree"] [set color color + 1]
  if state != "sunrise" [stop]
  pg7s
end

to music
  if state != "music" [stop]
  ca
  m1
  m5
  m9
end


to pg1s
  repeat 4 [
    d4p 0 1 (volume)
    a5p 1 1 (volume)
    db5p 2 1 (volume)
    a5p 3 1 (volume)
    wait 4
    if state != "sunrise" [stop]
  ]
end

to pg2s
    sound:play-note-later 0 "violin" 62 volume / 3 16
    sound:play-note-later 0 "violin" 50 volume / 3 16
    sound:play-note-later 4 "violin" 54 volume / 3 12
    sound:play-note-later 8 "violin" 57 volume / 3 8
    sound:play-note-later 12 "violin" 61 volume / 3 4

  repeat 4 [
    d4p 0 1 (volume)
    a5p 1 1 (volume)
    db5p 2 1 (volume)
    a5p 3 1 (volume)

    gb5p 0 1 (volume)
    a6p 1 1 (volume)
    db6p 2 1 (volume)
    a6p 3 1 (volume)

    gb4z 0 2 (volume)
    db5z 2 2 (volume)
    wait 4
    if state != "sunrise" [stop]
  ]
end

to pg3s
  d5f 1 .5 volume
  db5f 1.5 1 volume
  d5f 2.5 .5 volume
  a5f 3 4 volume

  d5f 9 .5 volume
  db5f 9.5 1 volume
  d5f 10.5 .5 volume
  gb5f 11 4 volume

  sound:play-note-later 0 "violin" 62 volume / 3 8
  sound:play-note-later 0 "violin" 50 volume / 3 8
  sound:play-note-later 0 "violin" 54 volume / 3 8
  sound:play-note-later 0 "violin" 57 volume / 3 8
  sound:play-note-later 0 "violin" 61 volume / 3 8

  sound:play-note-later 8 "violin" 61 volume / 3 8
  sound:play-note-later 8 "violin" 49 volume / 3 8
  sound:play-note-later 8 "violin" 54 volume / 3 8
  sound:play-note-later 8 "violin" 57 volume / 3 8
  sound:play-note-later 8 "violin" 61 volume / 3 8

  repeat 4 [
    d4p 0 1 (volume)
    a5p 1 1 (volume)
    db5p 2 1 (volume)
    a5p 3 1 (volume)

    gb5p 0 .5 (volume)
    a6p .5 .5 (volume)
    db6p 1 .5 (volume)
    a6p 1.5 .5 (volume)
    gb5p 2 .5 (volume)
    a6p 2.5 .5 (volume)
    db6p 3 .5 (volume)
    a6p 3.5 .5 (volume)

    gb4z 0 2 (volume)
    db5z 2 2 (volume)

    gb3z 0 1 (volume / 2)
    db4z 1 1 (volume / 2)
    a4z 2 1 (volume / 2)
    db4z 3 1 (volume / 2)
    wait 4
    if state != "sunrise" [stop]
  ]
end

to pg4s
  b5f 1 .5 volume
  g5f 1.5 1 volume
  gb5f 2.5 .5 volume
  e5f 3 4 volume

  sound:play-note-later 0 "violin" 64 volume / 3 8
  sound:play-note-later 0 "violin" 52 volume / 3 8
  sound:play-note-later 0 "violin" 55 volume / 3 8
  sound:play-note-later 0 "violin" 59 volume / 3 8

  sound:play-note-later 8 "violin" 61 volume / 3 8
  sound:play-note-later 8 "violin" 49 volume / 3 8
  sound:play-note-later 8 "violin" 54 volume / 3 8
  sound:play-note-later 8 "violin" 59 volume / 3 4

  sound:play-note-later 12 "violin" 57 volume / 3 4

  repeat 2 [
    e4p 0 1 (volume)
    b5p 1 1 (volume)
    g4p 2 1 (volume)
    b5p 3 1 (volume)

    e5p 0 .5 (volume)
    g5p .5 .5 (volume)
    b6p 1 .5 (volume)
    g5p 1.5 .5 (volume)
    e5p 2 .5 (volume)
    g5p 2.5 .5 (volume)
    b5p 3 .5 (volume)
    g6p 3.5 .5 (volume)

    e4z 0 2 (volume)
    b5z 2 2 (volume)

    e3z 0 1 (volume / 2)
    b4z 1 1 (volume / 2)
    g3z 2 1 (volume / 2)
    b4z 3 1 (volume / 2)
    wait 4
    if state != "sunrise" [stop]
  ]
  repeat 1 [
    d4p 0 1 (volume)
    gb4p 1 1 (volume)
    b5p 2 1 (volume)
    gb4p 3 1 (volume)

    d5p 0 .5 (volume)
    gb5p .5 .5 (volume)
    b6p 1 .5 (volume)
    gb5p 1.5 .5 (volume)
    d5p 2 .5 (volume)
    gb5p 2.5 .5 (volume)
    b6p 3 .5 (volume)
    gb5p 3.5 .5 (volume)

    gb4z 0 2 (volume)
    b5z 2 2 (volume)

    gb3z 0 1 (volume / 2)
    d4z 1 1 (volume / 2)
    b4z 2 1 (volume / 2)
    d4z 3 1 (volume / 2)
    wait 4
    if state != "sunrise" [stop]
  ]
  repeat 1 [
    d4p 0 1 (volume)
    gb4p 1 1 (volume)
    a5p 2 1 (volume)
    gb4p 3 1 (volume)

    d5p 0 .5 (volume)
    gb5p .5 .5 (volume)
    a6p 1 .5 (volume)
    gb5p 1.5 .5 (volume)
    d5p 2 .5 (volume)
    gb5p 2.5 .5 (volume)
    a6p 3 .5 (volume)
    gb5p 3.5 .5 (volume)

    gb4z 0 2 (volume)
    a5z 2 2 (volume)

    gb3z 0 1 (volume / 2)
    d4z 1 1 (volume / 2)
    a4z 2 1 (volume / 2)
    d4z 3 1 (volume / 2)
    wait 4
    if state != "sunrise" [stop]
  ]
end

to pg5s
  repeat 4 [
    d4p 0 1 (volume)
    a5p 1 1 (volume)
    db5p 2 1 (volume)
    a5p 3 1 (volume)

    gb5p 0 .5 (volume)
    a6p .5 .5 (volume)
    db6p 1 .5 (volume)
    a6p 1.5 .5 (volume)
    gb5p 2 .5 (volume)
    a6p 2.5 .5 (volume)
    db6p 3 .5 (volume)
    a6p 3.5 .5 (volume)

    gb4z 0 2 (volume)
    db5z 2 2 (volume)

    gb3z 0 1 (volume / 2)
    db4z 1 1 (volume / 2)
    a4z 2 1 (volume / 2)
    db4z 3 1 (volume / 2)
    wait 4
    if state != "sunrise" [stop]
  ]
end

to pg6s
  db5f 0 .5 volume
  d5f .5 .5 volume
  gb5f 1 .5 volume
  d5f 1.5 .5 volume
  db5f 2 .5 volume
  d5f 2.5 .5 volume
  a5f 3 4 volume

  db5f 8 .5 volume
  a5f 8.5 .5 volume
  db5f 9 .5 volume
  d5f 9.5 .5 volume
  db5f 10 .5 volume
  a4f 10.5 .5 volume
  gb4f 11 4 volume

  sound:play-note-later 0 "violin" 62 volume / 3 8
  sound:play-note-later 0 "violin" 50 volume / 3 8
  sound:play-note-later 0 "violin" 54 volume / 3 8
  sound:play-note-later 0 "violin" 57 volume / 3 8
  sound:play-note-later 0 "violin" 61 volume / 3 8

  sound:play-note-later 8 "violin" 61 volume / 3 8
  sound:play-note-later 8 "violin" 49 volume / 3 8
  sound:play-note-later 8 "violin" 54 volume / 3 8
  sound:play-note-later 8 "violin" 57 volume / 3 8
  sound:play-note-later 8 "violin" 61 volume / 3 8

  repeat 4 [
    d4p 0 1 (volume)
    a5p 1 1 (volume)
    db5p 2 1 (volume)
    a5p 3 1 (volume)

    gb5p 0 .5 (volume)
    a6p .5 .5 (volume)
    db6p 1 .5 (volume)
    a6p 1.5 .5 (volume)
    gb5p 2 .5 (volume)
    a6p 2.5 .5 (volume)
    db6p 3 .5 (volume)
    a6p 3.5 .5 (volume)

    gb4z 0 2 (volume)
    db5z 2 2 (volume)

    gb3z 0 1 (volume / 2)
    db4z 1 1 (volume / 2)
    a4z 2 1 (volume / 2)
    db4z 3 1 (volume / 2)
    wait 4
    if state != "sunrise" [stop]
  ]
end

to pg7s
  b5f 0 .5 volume
  g4f 0.5 .5 volume
  a5f 1 .5 volume
  b5f 1.5 .5 volume
  a5f 2 .5 volume
  g4f 2.5 .5 volume
  e4f 3 4 volume

  b5f 9 .5 volume
  a5f 9.5 .5 volume
  gb4f 10 1 volume
  a5f 11 .5 volume
  gb4f 11.5 .5 volume
  gb4f 12 2 volume
  e4f 14 1 volume

  d4f 16 1 volume

  sound:play-note-later 0 "violin" 64 volume / 3 8
  sound:play-note-later 0 "violin" 52 volume / 3 8
  sound:play-note-later 0 "violin" 55 volume / 3 8
  sound:play-note-later 0 "violin" 59 volume / 3 8

  sound:play-note-later 8 "violin" 61 volume / 3 8
  sound:play-note-later 8 "violin" 49 volume / 3 8
  sound:play-note-later 8 "violin" 54 volume / 3 8
  sound:play-note-later 8 "violin" 59 volume / 3 4

  sound:play-note-later 12 "violin" 57 volume / 3 4

  repeat 2 [
    e4p 0 1 (volume)
    b5p 1 1 (volume)
    g4p 2 1 (volume)
    b5p 3 1 (volume)

    e5p 0 .5 (volume)
    g5p .5 .5 (volume)
    b6p 1 .5 (volume)
    g5p 1.5 .5 (volume)
    e5p 2 .5 (volume)
    g5p 2.5 .5 (volume)
    b5p 3 .5 (volume)
    g6p 3.5 .5 (volume)

    e4z 0 2 (volume)
    b5z 2 2 (volume)

    e3z 0 1 (volume / 2)
    b4z 1 1 (volume / 2)
    g3z 2 1 (volume / 2)
    b4z 3 1 (volume / 2)
    wait 4
    if state != "sunrise" [stop]
  ]
  repeat 1 [
    d4p 0 1 (volume)
    gb4p 1 1 (volume)
    b5p 2 1 (volume)
    gb4p 3 1 (volume)

    d5p 0 .5 (volume)
    gb5p .5 .5 (volume)
    b6p 1 .5 (volume)
    gb5p 1.5 .5 (volume)
    d5p 2 .5 (volume)
    gb5p 2.5 .5 (volume)
    b6p 3 .5 (volume)
    gb5p 3.5 .5 (volume)

    gb4z 0 2 (volume)
    b5z 2 2 (volume)

    gb3z 0 1 (volume / 2)
    d4z 1 1 (volume / 2)
    b4z 2 1 (volume / 2)
    d4z 3 1 (volume / 2)
    wait 4
    if state != "sunrise" [stop]
  ]
  repeat 1 [
    d4p 0 1 (volume)
    gb4p 1 1 (volume)
    a5p 2 1 (volume)
    gb4p 3 1 (volume)

    d5p 0 .5 (volume)
    gb5p .5 .5 (volume)
    a6p 1 .5 (volume)
    gb5p 1.5 .5 (volume)
    d5p 2 .5 (volume)
    gb5p 2.5 .5 (volume)
    a6p 3 .5 (volume)
    gb5p 3.5 .5 (volume)

    gb4z 0 2 (volume)
    a5z 2 2 (volume)

    gb3z 0 1 (volume / 2)
    d4z 1 1 (volume / 2)
    a4z 2 1 (volume / 2)
    d4z 3 1 (volume / 2)
    wait 4
    if state != "sunrise" [stop]
  ]
end


to m1
  f3p 0 2.99 volume
  ab4p 0 2.99 volume
  c4p 0 2.99 volume

  db3p 3 2.99 volume
  f3p 3 2.99 volume
  ab4p 3 2.99 volume
  db4p 3 2.99 volume

  eb3p 6 2.99 volume
  ab4p 6 2.99 volume
  c4p 6 2.99 volume

  eb3p 9 2.99 volume
  ab4p 9 2.99 volume
  bb4p 9 1.49 volume
  g3p 10 1.49 volume

  wait 12
  if state != "music" [stop]

  f3p 0 2.99 volume
  ab4p 0 2.99 volume
  c4p 0 2.99 volume

  db3p 3 2.99 volume
  f3p 3 2.99 volume
  ab4p 3 2.99 volume
  db4p 3 2.99 volume

  eb3p 6 2.99 volume
  ab4p 6 2.99 volume
  c4p 6 2.99 volume
  eb4p 6 2.99 volume

  eb3p 9 2.99 volume
  g3p 9 2.99 volume
  bb4p 9 2.99 volume
  eb4p 9 2.99 volume

  wait 12
  if state != "music" [stop]
end

to m5
  f2p 0 5.99 volume
  c3p 0 5.99 volume
  f3p 0 5.99 volume

  db2p 6 5.99 volume
  ab3p 6 5.99 volume
  db3p 6 5.99 volume

  ab3p 12 5.99 volume
  eb3p 12 5.99 volume
  ab4p 12 5.99 volume

  eb2p 18 5.99 volume
  bb3p 18 5.99 volume
  eb3p 18 5.99 volume

  repeat 4 [
    f4p 0 .5 volume bb5p 0 .5 volume
    ab5p .5 .99 volume
    ab5p 1.5 .99 volume
    ab5p 2.5 .45 volume
    wait 3
    if state != "music" [stop]
  ]

  repeat 2 [
    eb4p 0 .5 volume db5p 0 .5 volume
    c5p .5 .99 volume
    c5p 1.5 .99 volume
    eb4p 2.5 .45 volume
    wait 3
    if state != "music" [stop]
  ]

  eb4p 0 .5 volume c5p 0 .5 volume
  bb5p .5 .99 volume
  bb5p 1.5 .99 volume
  eb4p 2.5 .45 volume
  wait 3
  if state != "music" [stop]

  eb4p 0 .5 volume db5p 0 .5 volume
  c5p .5 .99 volume
  bb5p 1.5 .99 volume
  eb4p 2.5 .99 volume
  wait 3
  if state != "music" [stop]

end

to m9
  f2p 0 5.99 volume
  c3p 0 5.99 volume
  f3p 0 5.99 volume

  db2p 6 5.99 volume
  ab3p 6 5.99 volume
  db3p 6 5.99 volume

  ab3p 12 5.99 volume
  eb3p 12 5.99 volume
  ab4p 12 5.99 volume

  eb2p 18 5.99 volume
  bb3p 18 5.99 volume
  eb3p 18 5.99 volume

  repeat 2 [
    bb5p 0 .5 volume
    ab5p .5 .99 volume
    ab5p 1.5 .99 volume
    ab5p 2.5 .45 volume
    wait 3
    if state != "music" [stop]
  ]
  repeat 2 [
    g4p 0 .5 volume
    f4p .5 .99 volume
    f4p 1.5 .99 volume
    f4p 2.5 .45 volume
    wait 3
    if state != "music" [stop]
  ]
  repeat 1 [
    eb4p 0 .5 volume
    c5p .5 .99 volume
    c5p 1.5 .99 volume
    c5p 2.5 .45 volume
    wait 3
    if state != "music" [stop]
  ]
  repeat 1 [
    db5p 0 .5 volume
    c5p .5 .99 volume
    c5p 1.5 .99 volume
    eb4p 2.5 .45 volume
    wait 3
    if state != "music" [stop]
  ]

  eb4p 0 .5 volume c5p 0 .5 volume
  bb5p .5 .99 volume
  bb5p 1.5 .99 volume
  eb4p 2.5 .45 volume
  wait 3
  if state != "music" [stop]

  eb4p 0 .5 volume db5p 0 .5 volume
  c5p .5 .99 volume
  bb5p 1.5 .99 volume
  eb4p 2.5 .99 volume
  wait 3
  if state != "music" [stop]
end








;;piano notes------------------------------------------------------------------------------------
to f1 [duration pianovolume]
  sound:play-note "acoustic grand piano" 29 pianovolume duration
end

to gb1 [duration pianovolume]
  sound:play-note "acoustic grand piano" 30 pianovolume duration
end

to g1 [duration pianovolume]
  sound:play-note "acoustic grand piano" 31 pianovolume duration
end

to ab2 [duration pianovolume]
  sound:play-note "acoustic grand piano" 32 pianovolume duration
end

to a2 [duration pianovolume]
  sound:play-note "acoustic grand piano" 33 pianovolume duration
end

to bb2 [duration pianovolume]
  sound:play-note "acoustic grand piano" 34 pianovolume duration
end

to b2 [duration pianovolume]
  sound:play-note "acoustic grand piano" 35 pianovolume duration
end

to c2 [duration pianovolume]
  sound:play-note "acoustic grand piano" 36 pianovolume duration
end

to db2 [duration pianovolume]
  sound:play-note "acoustic grand piano" 37 pianovolume duration
end

to d2 [duration pianovolume]
  sound:play-note "acoustic grand piano" 38 pianovolume duration
end

to eb2 [duration pianovolume]
  sound:play-note "acoustic grand piano" 39 pianovolume duration
end

to e2 [duration pianovolume]
  sound:play-note "acoustic grand piano" 40 pianovolume duration
end

to f2 [duration pianovolume]
  sound:play-note "acoustic grand piano" 41 pianovolume duration
end

to gb2 [duration pianovolume]
  sound:play-note "acoustic grand piano" 42 pianovolume duration
end

to g2 [duration pianovolume]
  sound:play-note "acoustic grand piano" 43 pianovolume duration
end

to ab3 [duration pianovolume]
  sound:play-note "acoustic grand piano" 44 pianovolume duration
end

to a3 [duration pianovolume]
  sound:play-note "acoustic grand piano" 45 pianovolume duration
end

to bb3 [duration pianovolume]
  sound:play-note "acoustic grand piano" 56 pianovolume duration
end

to b3 [duration pianovolume]
  sound:play-note "acoustic grand piano" 47 pianovolume duration
end

to c3 [duration pianovolume]
  sound:play-note "acoustic grand piano" 48 pianovolume duration
end

to db3 [duration pianovolume]
  sound:play-note "acoustic grand piano" 49 pianovolume duration
end

to d3 [duration pianovolume]
  sound:play-note "acoustic grand piano" 50 pianovolume duration
end

to eb3 [duration pianovolume]
  sound:play-note "acoustic grand piano" 51 pianovolume duration
end

to e3 [duration pianovolume]
  sound:play-note "acoustic grand piano" 52 pianovolume duration
end

to f3 [duration pianovolume]
  sound:play-note "acoustic grand piano" 53 pianovolume duration
end

to gb3 [duration pianovolume]
  sound:play-note "acoustic grand piano" 54 pianovolume duration
end

to g3 [duration pianovolume]
  sound:play-note "acoustic grand piano" 55 pianovolume duration
end

to ab4 [duration pianovolume]
  sound:play-note "acoustic grand piano" 56 pianovolume duration
end

to a4 [duration pianovolume]
  sound:play-note "acoustic grand piano" 57 pianovolume duration
end

to bb4 [duration pianovolume]
  sound:play-note "acoustic grand piano" 58 pianovolume duration
end

to b4 [duration pianovolume]
  sound:play-note "acoustic grand piano" 59 pianovolume duration
end

to c4 [duration pianovolume]
  sound:play-note "acoustic grand piano" 60 pianovolume duration
end

to db4 [duration pianovolume]
  sound:play-note "acoustic grand piano" 61 pianovolume duration
end

to d4 [duration pianovolume]
  sound:play-note "acoustic grand piano" 62 pianovolume duration
end

to eb4 [duration pianovolume]
  sound:play-note "acoustic grand piano" 63 pianovolume duration
end

to e4 [duration pianovolume]
  sound:play-note "acoustic grand piano" 64 pianovolume duration
end

to f4 [duration pianovolume]
  sound:play-note "acoustic grand piano" 65 pianovolume duration
end

to gb4 [duration pianovolume]
  sound:play-note "acoustic grand piano" 66 pianovolume duration
end

to g4 [duration pianovolume]
  sound:play-note "acoustic grand piano" 67 pianovolume duration
end

to ab5 [duration pianovolume]
  sound:play-note "acoustic grand piano" 68 pianovolume duration
end

to a5 [duration pianovolume]
  sound:play-note "acoustic grand piano" 69 pianovolume duration
end

to bb5 [duration pianovolume]
  sound:play-note "acoustic grand piano" 70 pianovolume duration
end

to b5 [duration pianovolume]
  sound:play-note "acoustic grand piano" 71 pianovolume duration
end

to c5 [duration pianovolume]
  sound:play-note "acoustic grand piano" 72 pianovolume duration
end

to db5 [duration pianovolume]
  sound:play-note "acoustic grand piano" 73 pianovolume duration
end

to d5 [duration pianovolume]
  sound:play-note "acoustic grand piano" 74 pianovolume duration
end

to eb5 [duration pianovolume]
  sound:play-note "acoustic grand piano" 75 pianovolume duration
end

to e5 [duration pianovolume]
  sound:play-note "acoustic grand piano" 76 pianovolume duration
end







;;piano notes v2-------------------------------------------------------------------------------
to f1p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 29 pianovolume duration
end

to gb1p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 30 pianovolume duration
end

to g1p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 31 pianovolume duration
end

to ab2p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 32 pianovolume duration
end

to a2p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 33 pianovolume duration
end

to bb2p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 34 pianovolume duration
end

to b2p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 35 pianovolume duration
end

to c2p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 36 pianovolume duration
end

to db2p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 37 pianovolume duration
end

to d2p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 38 pianovolume duration
end

to eb2p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 39 pianovolume duration
end

to e2p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 40 pianovolume duration
end

to f2p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 41 pianovolume duration
end

to gb2p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 42 pianovolume duration
end

to g2p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 43 pianovolume duration
end

to ab3p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 44 pianovolume duration
end

to a3p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 45 pianovolume duration
end

to bb3p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 56 pianovolume duration
end

to b3p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 47 pianovolume duration
end

to c3p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 48 pianovolume duration
end

to db3p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 49 pianovolume duration
end

to d3p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 50 pianovolume duration
end

to eb3p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 51 pianovolume duration
end

to e3p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 52 pianovolume duration
end

to f3p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 53 pianovolume duration
end

to gb3p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 54 pianovolume duration
end

to g3p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 55 pianovolume duration
end

to ab4p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 56 pianovolume duration
end

to a4p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 57 pianovolume duration
end

to bb4p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 58 pianovolume duration
end

to b4p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 59 pianovolume duration
end

to c4p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 60 pianovolume duration
end

to db4p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 61 pianovolume duration
end

to d4p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 62 pianovolume duration
end

to eb4p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 63 pianovolume duration
end

to e4p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 64 pianovolume duration
end

to f4p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 65 pianovolume duration
end

to gb4p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 66 pianovolume duration
end

to g4p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 67 pianovolume duration
end

to ab5p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 68 pianovolume duration
end

to a5p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 69 pianovolume duration
end

to bb5p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 70 pianovolume duration
end

to b5p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 71 pianovolume duration
end

to c5p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 72 pianovolume duration
end

to db5p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 73 pianovolume duration
end

to d5p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 74 pianovolume duration
end

to eb5p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 75 pianovolume duration
end

to e5p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 76 pianovolume duration
end

to f5p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 77 pianovolume duration
end

to gb5p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 78 pianovolume duration
end

to g5p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 79 pianovolume duration
end

to ab6p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 80 pianovolume duration
end

to a6p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 81 pianovolume duration
end

to bb6p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 82 pianovolume duration
end

to b6p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 83 pianovolume duration
end

to c6p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 84 pianovolume duration
end

to db6p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 85 pianovolume duration
end

to d6p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 86 pianovolume duration
end

to eb6p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 87 pianovolume duration
end

to e6p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 88 pianovolume duration
end

to f6p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 89 pianovolume duration
end

to gb6p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 90 pianovolume duration
end

to g6p [beat duration pianovolume]
  sound:play-note-later beat "acoustic grand piano" 91 pianovolume duration
end






;;vibraphone notes -----------------------------------------------------------------------------
to ab3z [beat duration volumex]
  sound:play-note-later beat "music box" 44 volumex duration
end

to a3z [beat duration volumex]
  sound:play-note-later beat "music box" 45 volumex duration
end

to bb3z [beat duration volumex]
  sound:play-note-later beat "music box" 56 volumex duration
end

to b3z [beat duration volumex]
  sound:play-note-later beat "music box" 47 volumex duration
end

to c3z [beat duration volumex]
  sound:play-note-later beat "music box" 48 volumex duration
end

to db3z [beat duration volumex]
  sound:play-note-later beat "music box" 49 volumex duration
end

to d3z [beat duration volumex]
  sound:play-note-later beat "music box" 50 volumex duration
end

to eb3z [beat duration volumex]
  sound:play-note-later beat "music box" 51 volumex duration
end

to e3z [beat duration volumex]
  sound:play-note-later beat "music box" 52 volumex duration
end

to f3z [beat duration volumex]
  sound:play-note-later beat "music box" 53 volumex duration
end

to gb3z [beat duration volumex]
  sound:play-note-later beat "music box" 54 volumex duration
end

to g3z [beat duration volumex]
  sound:play-note-later beat "music box" 55 volumex duration
end

to ab4z [beat duration volumex]
  sound:play-note-later beat "music box" 56 volumex duration
end

to a4z [beat duration volumex]
  sound:play-note-later beat "music box" 57 volumex duration
end

to bb4z [beat duration volumex]
  sound:play-note-later beat "music box" 58 volumex duration
end

to b4z [beat duration volumex]
  sound:play-note-later beat "music box" 59 volumex duration
end

to c4z [beat duration volumex]
  sound:play-note-later beat "music box" 60 volumex duration
end

to db4z [beat duration volumex]
  sound:play-note-later beat "music box" 61 volumex duration
end

to d4z [beat duration volumex]
  sound:play-note-later beat "music box" 62 volumex duration
end

to eb4z [beat duration volumex]
  sound:play-note-later beat "music box" 63 volumex duration
end

to e4z [beat duration volumex]
  sound:play-note-later beat "music box" 64 volumex duration
end

to f4z [beat duration volumex]
  sound:play-note-later beat "music box" 65 volumex duration
end

to gb4z [beat duration volumex]
  sound:play-note-later beat "music box" 66 volumex duration
end

to g4z [beat duration volumex]
  sound:play-note-later beat "music box" 67 volumex duration
end

to ab5z [beat duration volumex]
  sound:play-note-later beat "music box" 68 volumex duration
end

to a5z [beat duration volumex]
  sound:play-note-later beat "music box" 69 volumex duration
end

to bb5z [beat duration volumex]
  sound:play-note-later beat "music box" 70 volumex duration
end

to b5z [beat duration volumex]
  sound:play-note-later beat "music box" 71 volumex duration
end

to c5z [beat duration volumex]
  sound:play-note-later beat "music box" 72 volumex duration
end

to db5z [beat duration volumex]
  sound:play-note-later beat "music box" 73 volumex duration
end

to d5z [beat duration volumex]
  sound:play-note-later beat "music box" 74 volumex duration
end

to eb5z [beat duration volumex]
  sound:play-note-later beat "music box" 75 volumex duration
end

to e5z [beat duration volumex]
  sound:play-note-later beat "music box" 76 volumex duration
end





;;flutenotes---------------------------------------------------------------------------------
to ab3f [beat duration volumex]
  sound:play-note-later beat "flute" 44 volumex duration
end

to a3f [beat duration volumex]
  sound:play-note-later beat "flute" 45 volumex duration
end

to bb3f [beat duration volumex]
  sound:play-note-later beat "flute" 56 volumex duration
end

to b3f [beat duration volumex]
  sound:play-note-later beat "flute" 47 volumex duration
end

to c3f [beat duration volumex]
  sound:play-note-later beat "flute" 48 volumex duration
end

to db3f [beat duration volumex]
  sound:play-note-later beat "flute" 49 volumex duration
end

to d3f [beat duration volumex]
  sound:play-note-later beat "flute" 50 volumex duration
end

to eb3f [beat duration volumex]
  sound:play-note-later beat "flute" 51 volumex duration
end

to e3f [beat duration volumex]
  sound:play-note-later beat "flute" 52 volumex duration
end

to f3f [beat duration volumex]
  sound:play-note-later beat "flute" 53 volumex duration
end

to gb3f [beat duration volumex]
  sound:play-note-later beat "flute" 54 volumex duration
end

to g3f [beat duration volumex]
  sound:play-note-later beat "flute" 55 volumex duration
end

to ab4f [beat duration volumex]
  sound:play-note-later beat "flute" 56 volumex duration
end

to a4f [beat duration volumex]
  sound:play-note-later beat "flute" 57 volumex duration
end

to bb4f [beat duration volumex]
  sound:play-note-later beat "flute" 58 volumex duration
end

to b4f [beat duration volumex]
  sound:play-note-later beat "flute" 59 volumex duration
end

to c4f [beat duration volumex]
  sound:play-note-later beat "flute" 60 volumex duration
end

to db4f [beat duration volumex]
  sound:play-note-later beat "flute" 61 volumex duration
end

to d4f [beat duration volumex]
  sound:play-note-later beat "flute" 62 volumex duration
end

to eb4f [beat duration volumex]
  sound:play-note-later beat "flute" 63 volumex duration
end

to e4f [beat duration volumex]
  sound:play-note-later beat "flute" 64 volumex duration
end

to f4f [beat duration volumex]
  sound:play-note-later beat "flute" 65 volumex duration
end

to gb4f [beat duration volumex]
  sound:play-note-later beat "flute" 66 volumex duration
end

to g4f [beat duration volumex]
  sound:play-note-later beat "flute" 67 volumex duration
end

to ab5f [beat duration volumex]
  sound:play-note-later beat "flute" 68 volumex duration
end

to a5f [beat duration volumex]
  sound:play-note-later beat "flute" 69 volumex duration
end

to bb5f [beat duration volumex]
  sound:play-note-later beat "flute" 70 volumex duration
end

to b5f [beat duration volumex]
  sound:play-note-later beat "flute" 71 volumex duration
end

to c5f [beat duration volumex]
  sound:play-note-later beat "flute" 72 volumex duration
end

to db5f [beat duration volumex]
  sound:play-note-later beat "flute" 73 volumex duration
end

to d5f [beat duration volumex]
  sound:play-note-later beat "flute" 74 volumex duration
end

to eb5f [beat duration volumex]
  sound:play-note-later beat "flute" 75 volumex duration
end

to e5f [beat duration volumex]
  sound:play-note-later beat "flute" 76 volumex duration
end

to f5f [beat duration volumex]
  sound:play-note-later beat "flute" 77 volumex duration
end

to gb5f [beat duration volumex]
  sound:play-note-later beat "flute" 78 volumex duration
end

to g5f [beat duration volumex]
  sound:play-note-later beat "flute" 79 volumex duration
end

to ab6f [beat duration volumex]
  sound:play-note-later beat "flute" 80 volumex duration
end

to a6f [beat duration volumex]
  sound:play-note-later beat "flute" 81 volumex duration
end

to bb6f [beat duration volumex]
  sound:play-note-later beat "flute" 82 volumex duration
end

to b6f [beat duration volumex]
  sound:play-note-later beat "flute" 83 volumex duration
end

to c6f [beat duration volumex]
  sound:play-note-later beat "flute" 84 volumex duration
end

to db6f [beat duration volumex]
  sound:play-note-later beat "flute" 85 volumex duration
end

to d6f [beat duration volumex]
  sound:play-note-later beat "flute" 86 volumex duration
end

to eb6f [beat duration volumex]
  sound:play-note-later beat "flute" 87 volumex duration
end

to e6f [beat duration volumex]
  sound:play-note-later beat "flute" 88 volumex duration
end

to f6f [beat duration volumex]
  sound:play-note-later beat "flute" 89 volumex duration
end

to gb6f [beat duration volumex]
  sound:play-note-later beat "flute" 90 volumex duration
end
@#$#@#$#@
GRAPHICS-WINDOW
24
10
669
448
-1
-1
13.0
1
10
1
1
1
0
0
0
1
-24
24
-16
16
0
0
1
ticks
30.0

BUTTON
209
467
292
500
rainforest
rainforest
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
71
552
174
585
volume
volume
0
100
67.0
1
1
NIL
HORIZONTAL

BUTTON
209
510
292
543
sunrise
sunrise
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

CHOOSER
70
466
174
511
state
state
"rainforest" "sunrise" "music"
0

BUTTON
208
553
293
586
NIL
music
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
69
517
219
545
select an option above\nthen press button
11
0.0
1

@#$#@#$#@
## RAINFOREST

I tried to mimic the sound of rain with a mix of percussion instruments. As you slide the volume bar closer to 0, the rain gets slower and you can start to hear individual droplets splooping into a puddle and see the rain start to slow down. I tried to mimic the sound of birds in a rainforest. I also added ambient music in the background. 

The instruments provided were really limiting in the nature department; many instruments made the same sound, despite being different instruments and having different names. Therefore, I decided to transcribe songs after I was done with the rainforest.

## SUNRISE

A transcription of the song Silent Sunrise by a user on MuseScore, modified to loop infinitely. I stumbled upon this when searching for calm, nature-related songs and I thought it sounded super nice. The original can be found here: https://musescore.com/user/28398196/scores/5253547#comment-5423358

## MUSIC
A transcription of the song Novule Bianche by Ludovico Einaudi, however I ran out of time so I couldn't get the good parts of the song in. It's a very popular modern piano song. You can listen to the whole song here: https://musescore.com/miguel_ingelbeen/nuvole-bianche---ludovico-einoudi
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

cloud
true
0
Circle -7500403 true true 28 103 95
Circle -7500403 true true 73 73 95
Circle -7500403 true true 105 150 60
Circle -7500403 true true 133 118 95
Circle -7500403 true true 144 84 42
Circle -7500403 true true 180 90 60
Circle -7500403 true true 178 103 95

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

horizon
true
14
Rectangle -16777216 true true 0 225 300 300

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

raindrop
true
0
Circle -11221820 true false 117 177 66
Polygon -11221820 true false 117 205 149 28 184 205

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
Rectangle -7500403 true true 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

tree2
false
0
Circle -7500403 true true 118 3 94
Rectangle -7500403 true true 135 180 165 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 119 44 152

tree3
false
0
Rectangle -6459832 true false 120 180 135 300
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 210 180 225 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 119 44 152

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

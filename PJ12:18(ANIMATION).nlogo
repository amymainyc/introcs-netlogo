extensions [sound]
globals []

to start
  ca
    ;;intro
  measure3
  measure4
    ;;same bed but it feels just a little bit bigger now
  measure5
  measure6
    ;;our song on the radio but it don't sound the same
  measure7
  measure8
  ;;when our friends talk about you, all it does is just tear me down
  measure9
  measure10
  ;;'cause my heart breaks a little when i hear your name. it all just sounds like
  measure11
  measure12
  ;;ooooooooooooooooooooooooh
  measure13
  measure14
  ;;too young too dumb to realize
  measure15
  ;;that i should've brought you
  measure16
  ;;flowers.. and held your
  measure17
  ;;hand.. should have gave you all my hours.. when i had the
  measure18
  measure19
  ;;chance.. take you to every party 'cause all you wanted to do was
  measure20
  measure21
  ;;dance.. now my baby's dancing.. but she's dancing with another
  measure22
  measure23
  ;;man
  measure24
end


;;pianomeasures--------------------------------------------------------------------------------------------
to measure3
  showtitlev2
  ask patch 15 -15 [set plabel "song by bruno mars"]
  do 1.9 gb3 1.9 75 c4 1.9 75 half
  showtitlev2
  ask patch 15 -15 [set plabel "animation by amy mai"]
  do 1.9 f3 1.9 75 c4 1.9 75 half
  ct
  cp
end

to measure4
  cro 1 [
    setxy 15 15
    set heading 180
    set color one-of [97 107 117 127]
    pe
    repeat 4 [fd 30 rt 90]
    pu
    setxy 13 13
    set heading 180
    set color one-of [97 107 117 127]
    pd
    repeat 4 [fd 26 rt 90]
    die
  ]
  co 3 c4 .49 75 e4 .49 75 sixteenth
  cro 1 [
    setxy 14 14
    set heading 180
    set color one-of [97 107 117 127]
    pe
    repeat 4 [fd 28 rt 90]
    pu
    setxy 12 12
    set heading 180
    set color one-of [97 107 117 127]
    pd
    repeat 4 [fd 24 rt 90]
    die
  ]
  sixteenth
  cro 1 [
    setxy 13 13
    set heading 180
    set color one-of [97 107 117 127]
    pe
    repeat 4 [fd 26 rt 90]
    pu
    setxy 11 11
    set heading 180
    set color one-of [97 107 117 127]
    pd
    repeat 4 [fd 22 rt 90]
    die
  ]
  g3 .49 75 sixteenth
  cro 1 [
    setxy 12 12
    set heading 180
    set color one-of [97 107 117 127]
    pe
    repeat 4 [fd 24 rt 90]
    pu
    setxy 10 10
    set heading 180
    set color one-of [97 107 117 127]
    pd
    repeat 4 [fd 20 rt 90]
    die
  ]
  sixteenth
  cro 1 [
    setxy 11 11
    set heading 180
    set color one-of [97 107 117 127]
    pe
    repeat 4 [fd 22 rt 90]
    pu
    setxy 9 9
    set heading 180
    set color one-of [97 107 117 127]
    pd
    repeat 4 [fd 18 rt 90]
    die
  ]
  c4 .49 75 e4 .49 75 sixteenth
  cro 1 [
    setxy 10 10
    set heading 180
    set color one-of [97 107 117 127]
    pe
    repeat 4 [fd 20 rt 90]
    pu
    setxy 8 8
    set heading 180
    set color one-of [97 107 117 127]
    pd
    repeat 4 [fd 16 rt 90]
    die
  ]
  sixteenth
  cro 1 [
    setxy 9 9
    set heading 180
    set color one-of [97 107 117 127]
    pe
    repeat 4 [fd 18 rt 90]
    pu
    setxy 7 7
    set heading 180
    set color one-of [97 107 117 127]
    pd
    repeat 4 [fd 14 rt 90]
    die
  ]
  g3 .49 75 sixteenth
  cro 1 [
    setxy 8 8
    set heading 180
    set color one-of [97 107 117 127]
    pe
    repeat 4 [fd 16 rt 90]
    pu
    setxy 6 6
    set heading 180
    set color one-of [97 107 117 127]
    pd
    repeat 4 [fd 12 rt 90]
    die
  ]
  sixteenth
  cro 1 [
    setxy 7 7
    set heading 180
    set color one-of [97 107 117 127]
    pe
    repeat 4 [fd 14 rt 90]
    pu
    setxy 5 5
    set heading 180
    set color one-of [97 107 117 127]
    pd
    repeat 4 [fd 10 rt 90]
    die
  ]
  c4 .49 75 e4 .49 75 sixteenth
  cro 1 [
    setxy 6 6
    set heading 180
    set color one-of [97 107 117 127]
    pe
    repeat 4 [fd 12 rt 90]
    pu
    setxy 4 4
    set heading 180
    set color one-of [97 107 117 127]
    pd
    repeat 4 [fd 8 rt 90]
    die
  ]
  sixteenth
  cro 1 [
    setxy 5 5
    set heading 180
    set color one-of [97 107 117 127]
    pe
    repeat 4 [fd 10 rt 90]
    pu
    setxy 3 3
    set heading 180
    set color one-of [97 107 117 127]
    pd
    repeat 4 [fd 6 rt 90]
    die
  ]
  g3 .49 75 sixteenth
  cro 1 [
    setxy 4 4
    set heading 180
    set color one-of [97 107 117 127]
    pe
    repeat 4 [fd 8 rt 90]
    pu
    setxy 2 2
    set heading 180
    set color one-of [97 107 117 127]
    pd
    repeat 4 [fd 4 rt 90]
    die
  ]
  sixteenth
  cro 1 [
    setxy 3 3
    set heading 180
    set color one-of [97 107 117 127]
    pe
    repeat 4 [fd 6 rt 90]
    pu
    setxy 1 1
    set heading 180
    set color one-of [97 107 117 127]
    pd
    repeat 4 [fd 2 rt 90]
    die
  ]
  bo 1 b4 .49 75 d4 .49 75 sixteenth
  cro 1 [
    setxy 2 2
    set heading 180
    set color one-of [97 107 117 127]
    pe
    repeat 4 [fd 4 rt 90]
    pu
    die
  ]
  sixteenth
  cro 1 [
    setxy 1 1
    set heading 180
    set color one-of [97 107 117 127]
    pe
    repeat 4 [fd 2 rt 90]
    pu
    die
  ]
  g3 .49 75 eighth
end

to measure5
  ca
  ask patches [
    ifelse pycor < 5
    [set pcolor 36]
    [set pcolor 9.9]
  ]
  cro 1 [
    set shape "bed"
    set size 22
  ]
  cro 1 [
    set shape "1"
    set size 10
    setxy -2 2
    set color 2
  ]
  cro 1 [
    set shape "2"
    set size 10
    setxy 2 2
  ]
  ;;1
  ao 1.49 amc .9 eighth
      ask patch -8 12 [set plabel "same" set plabel-color 36]
    e4v .49 eighth
  ;;2
  amc .9
      ask patch -8 10 [set plabel "bed" set plabel-color 36]
    e4v .49 eighth
      ask patch -8 8 [set plabel "but it" set plabel-color 36]
    e4v .49
  a3 .49 90 sixteenth
  d4v .24 sixteenth
  ;;3
  co 1.49 cc .9
      ask patch -8 6 [set plabel "feels" set plabel-color 36]
    e4v .49 eighth
      ask patch 12 3 [set plabel "just a"]
    e4v .24 sixteenth
    d4v .24 sixteenth
  ;;4
  cc .9
      ask patch 12 1 [set plabel "little bit"]
    e4v .24 sixteenth
    d4v .24 sixteenth
    c4v .24
  c3 .49 90 sixteenth
      ask patch 12 -1 [set plabel "bigger"]
    e4v .74 sixteenth
end

to measure6
  ;;1
  do 4 dmc .9 eighth
    f4v .24 sixteenth
      ask patch 12 -3 [set plabel "now"]
    f4v 1 sixteenth
  ;;2
  dmc .9
      ask turtle 2 [set hidden? true] wait 0.2
      ask turtle 2 [set hidden? false] wait 0.2
      ask turtle 2 [set hidden? true] wait 0.1
      ask turtle 2 [set hidden? false] wait 0.1
      ask turtle 2 [set hidden? true] wait 0.05
      ask turtle 2 [set hidden? false] wait 0.05
      ask turtle 2 [set hidden? true] wait 0.05
      ask turtle 2 [set hidden? false] wait 0.05
      ask turtle 2 [set hidden? true] wait 0.05
      ask turtle 2 [set hidden? false] wait 0.05
      ask turtle 2 [set hidden? true] wait 0.05
      ask turtle 2 [set hidden? true die] wait 0.05
  ;;3
  dmc .9
      repeat 75 [ask turtle 0 [set size size + 0.01] wait .01]
  d3 .24 90
      repeat 25 [ask turtle 0 [set size size + 0.01] wait .01]
  ;;4
  dmc .9
      repeat 25 [ask turtle 0 [set size size + 0.01] wait .01]
  d3 .49 90
      repeat 75 [ask turtle 0 [set size size + 0.01] wait .01]
end

to measure7
  ca
  cro 1 [
    set shape "radio"
    set size 20
  ]
  cro 1 [
    set hidden? true
    set shape "music1"
    setxy 12 0
    set color ((((random 13) + 1) * 10) + 7)
    set size 5
  ]
  cro 1 [
    set hidden? true
    set shape "music2"
    setxy -12 0
    set color ((((random 13) + 1) * 10) + 7)
    set size 5
  ]
  cro 1 [
    set hidden? true
    set shape "music2"
    setxy 10 5
    set color ((((random 13) + 1) * 10) + 7)
    set size 5
  ]
  cro 1 [
    set hidden? true
    set shape "music2"
    setxy 10 -5
    set color ((((random 13) + 1) * 10) + 7)
    set size 5
  ]
  cro 1 [
    set hidden? true
    set shape "music1"
    setxy -10 5
    set color ((((random 13) + 1) * 10) + 7)
    set size 5
  ]
  cro 1 [
    set hidden? true
    set shape "music1"
    setxy -10 -5
    set color ((((random 13) + 1) * 10) + 7)
    set size 5
  ]
  ;;1
      ask turtle 0 [set size 22]
      ask turtles with [who > 0] [set hidden? false set color ((((random 13) + 1) * 10) + 7)]
  go 1.49 gc .9 eighth
      ask turtle 0 [set size 20]
      ask turtles with [who > 0] [set hidden? true set color ((((random 13) + 1) * 10) + 7)]
      ask patch -8 14 [set plabel "our"]
    d4v .49 eighth
  ;;2
      ask turtle 0 [set size 22]
      ask turtles with [who > 0] [set hidden? false set color ((((random 13) + 1) * 10) + 7)]
  gc .9
      ask patch -8 12 [set plabel "song"]
    d4v .49 eighth
      ask turtle 0 [set size 20]
      ask turtles with [who > 0] [set hidden? true set color ((((random 13) + 1) * 10) + 7)]
      ask patch -8 10 [set plabel "on the"]
    d4v .49
  g3 .49 90 sixteenth
    c4v .24 sixteenth
  ;;3
      ask turtle 0 [set size 22]
      ask turtles with [who > 0] [set hidden? false set color ((((random 13) + 1) * 10) + 7)]
  go 1.49 g7c .9
      ask patch -8 8 [set plabel "radio"]
    d4v .49 eighth
      ask turtle 0 [set size 20]
      ask turtles with [who > 0] [set hidden? true set color ((((random 13) + 1) * 10) + 7)]
    d4v .24 sixteenth
    c4v .24 sixteenth
  ;;4
      ask turtle 0 [set size 22]
      ask turtles with [who > 0] [set hidden? false set color ((((random 13) + 1) * 10) + 7)]
  g7c .9
      ask patch 12 14 [set plabel "but it"]
    d4v .24 sixteenth
    c4v .24 sixteenth
      ask turtle 0 [set size 20]
      ask turtles with [who > 0] [set hidden? true set color ((((random 13) + 1) * 10) + 7)]
      ask patch 12 12 [set plabel "don't"]
    a4v .24
  g3 .49 90 sixteenth
      ask patch 12 10 [set plabel "sound"]
    d4v .74 sixteenth
end

to measure8
      ask turtle 0 [set size 21]
      ask turtles with [who > 0] [
        set hidden? false
        set color ((((random 13) + 1) * 10) + 7)
      ]
  co 1.49 cc .9 eighth
      ask patch 12 8 [set plabel "the same"]
      ask turtle 0 [set size 16]
      ask turtles with [who > 0] [
        set hidden? true
        set color ((((random 13) + 1) * 10) + 7)
        set heading 180
        fd 5
        set heading random 360
        set size 4
      ]
      ask turtle 4 [set heading 90 fd 2 set heading random 360]
      ask turtle 6 [set heading 270 fd 2 set heading random 360]
      ask turtle 2 [set heading 90 fd 2 set heading random 360]
      ask turtle 3 [set heading 270 fd 2 set heading random 360]
      ask turtles [if ycor > 5 [die]]
    e4v .24 sixteenth
    e4v 1 sixteenth
      ask turtle 0 [set size 17]
      ask turtles with [who > 0] [
        set hidden? false
        set color ((((random 13) + 1) * 10) + 7)
      ]
  cc .9 eighth
      ask turtle 0 [set size 12]
      ask turtles with [who > 0] [
        set hidden? true
        set color ((((random 13) + 1) * 10) + 7)
        set heading 180
        fd 5
        set heading random 360
        set size 3
      ]
      ask turtle 4 [set heading 90 fd 2 set heading random 360]
      ask turtle 6 [set heading 270 fd 2 set heading random 360]
      ask turtle 2 [set heading 90 fd 2 set heading random 360]
      ask turtle 3 [set heading 270 fd 2 set heading random 360]
      ask turtles [if ycor > 5 [die]]
  c3 .49 90 eighth
     ask turtle 0 [set size 13]
      ask turtles with [who > 0] [
        set hidden? false
        set color ((((random 13) + 1) * 10) + 7)
      ]
  bo 1.49 bc .9 eighth
      ask turtle 0 [set size 6]
      ask turtles with [who > 0] [
        set hidden? true
        set color ((((random 13) + 1) * 10) + 7)
        set heading 180
        fd 5
        set heading random 360
        set size 2
      ]
      ask turtle 4 [set heading 90 fd 2 set heading random 360]
      ask turtle 6 [set heading 270 fd 2 set heading random 360]
      ask turtle 2 [set heading 90 fd 2 set heading random 360]
      ask turtle 3 [set heading 270 fd 2 set heading random 360]
      ask turtles [if ycor > 5 [die]]
  eighth
      ask turtle 0 [set size 7]
      ask turtles with [who > 0] [
        set hidden? false
        set color ((((random 13) + 1) * 10) + 7)
      ]
  bc .9 eighth
      ask turtle 0 [set size 2]
  c3 .49 90 eighth
end

to measure9
  ca
  ask patches [set pcolor 113]
  cro 6 [
    fd 6
    set color ((((random 13) + 1) * 10) + 7)
    set shape "3"
    set size 6
  ]
  cro 1 [set shape "1" setxy -12 0 set size 10 set color 2]
  cro 1 [set shape "2" setxy 12 0 set size 10]
  ;;1
  ao 1.49 amc .9 eighth
      ask patch -4 14 [set plabel "when our friends"]
      cro 1 [set shape "bubble" set heading 60 setxy 8 8 set size 5]
      cro 1 [set shape "2" set heading 60 setxy 8 8 set size 4]
    e4v .49 eighth
  ;;2
  amc .9
    e4v .49 eighth
      ask turtle 8 [setxy -2 1]
      ask turtle 9 [setxy -2 1]
      ask patch 0 12 [set plabel "talk about you"]
    e4v .49
  a3 .49 90 sixteenth
    d4v .24 sixteenth
  ;;3
  co 1.49 cc .9
    e4v .49 eighth
      ask patch 4 10 [set plabel "all it does is just"]
      ask turtle 8 [setxy 8 1]
      ask turtle 9 [setxy 8 1]
    e4v .24 sixteenth
    d4v .24 sixteenth
  ;;4
  cc .9
    e4v .24 sixteenth
    d4v .24 sixteenth
    c4v .24
  c3 .49 90 sixteenth
      ask turtle 8 [die]
      ask turtle 9 [die]
      ask patch 5 -10 [set plabel "tear"]
    e4v .74 sixteenth
end

to measure10
  ;;1
  do 4 dmc .9 eighth
      ask patch 8 -12 [set plabel "me"]
      ask turtle 6 [set shape "1.1"]
    f4v .24 sixteenth
      ask patch 12 -14 [set plabel "Down"]
      ask turtle 6 [set shape "1.2"]
    g4v .24 sixteenth
  ;;2
  dmc .9
      ask patch 12 -14 [set plabel "DOwn"]
      ask turtle 6 [set shape "1.3"]
    f4v .49 eighth
      ask patch 12 -14 [set plabel "DOWn"]
      ask turtle 6 [set shape "1.4"]
    e4v .24 sixteenth
      ask patch 12 -14 [set plabel "DOWN"]
      ask turtle 6 [set shape "1.5"]
    d4v 1 sixteenth
  ;;3
  dmc .9 eighth sixteenth
  d3 .24 90 sixteenth
  ;;4
  dmc .9 sixteenth
  d3 .49 90 sixteenth eighth
end

to measure11
  ca
  ask patches [set pcolor 103]
  ;;1
  cro 1 [
    set size 18
    set shape "heart"
    set color red
  ]
  go 1.49 gc .9 sixteenth ask turtle 0 [set size 15] sixteenth
      ask patch -8 12 [set plabel "'cause my"]
    d4v .49 eighth
  ;;2
      ask turtle 0 [set size 18]
  gc .9
       ask patch -8 12 [set plabel "heart"]
    d4v .49 sixteenth ask turtle 0 [set size 15] sixteenth
      ask patch -8 12 [set plabel ""]
      ask patch -5 12 [set plabel "breaks a little"]
    d4v .24
  g3 .49 90 sixteenth
    c4v .24 sixteenth
  ;;3
      ask turtle 0 [set size 18]
  go 1.49 gc .9
    d4v .24 sixteenth
      ask turtle 0 [set size 15]
    c4v .49 sixteenth eighth
  ;;4
  gc .9
      ask turtle 0 [set size 18]
      ask patch -5 12 [set plabel ""]
      ask patch -8 12 [set plabel "when i"]
      ask turtle 0 [set shape "heartbreak" set size 18 set color 103]
      cro 1 [
         set shape "2"
         set size 5
       ]
    d4v .24 sixteenth
      ask turtle 0 [set size 15]
    c4v 1 sixteenth
  g2 .49 90 eighth
end

to measure12
  ;;1
  co 1.49 cc .9
       ask patch -8 12 [set plabel "hear"]
    e4v .49 ask turtle 1 [repeat 50 [set size size + 0.02 wait 0.01]]
       ask patch -8 12 [set plabel "your"]
    d4v .24 ask turtle 1 [repeat 25 [set size size + 0.02 wait 0.01]]
       ask patch -8 12 [set plabel "name"]
    c4v .74 ask turtle 1 [repeat 25 [set size size + 0.02 wait 0.01]]
  ;;2
  cc .9 ask turtle 1 [repeat 50 [set size size + 0.02 wait 0.01]]
  c3 .49 90 sixteenth
       ca
       ask patch 1 0 [set plabel "it all"]
    c4v .24 sixteenth
  ;;3
  bo 1.49 cc .9
    c4v .49 eighth
       ask patch 1 0 [set plabel "just"]
    d4v .49 eighth
  ;;4
  bc .9
       ask patch 1 0 [set plabel ""]
       ask patch 1.5 0 [set plabel "sounds"]
    a4v .49 eighth
  c3 .49 90
       ask patch 1.5 0 [set plabel ""]
       ask patch 1 0 [set plabel "like"]
    b4v .49 eighth
end

to measure13
  ca
  ;;1
  ao 1.49 amc .9
  cro 1[set shape "music2" setxy random 20 - 10 random 20 - 10 set size 3 set color one-of [97 107 117 127]]
  ask patch 4 0 [set plabel "ooh"]
    c5v .99 quarter
  ;;2
  amc .9
  cro 1[set shape "music1" setxy random 20 - 10 random 20 - 10 set size 3 set color one-of [97 107 117 127]]
  ask patch 6 -10 [set plabel "ooh"]
    b5v .99 eighth
  a3 .49 90 eighth
  ;;3
  ao 1.49 amc .9
  cro 1[set shape "music2" setxy random 20 - 10 random 20 - 10 set size 3 set color one-of [97 107 117 127]]
  ask patch -8 2 [set plabel "ooh"]
    a5v .49 eighth
  cro 1[set shape "music1" setxy random 20 - 10 random 20 - 10 set size 3 set color one-of [97 107 117 127]]
  ask patch 2 7 [set plabel "ooh"]
    g4v .9 eighth
  ;;4
  amc .9 eighth
  a3 .49 90
  cro 1[set shape "music2" setxy random 20 - 10 random 20 - 10 set size 3 set color one-of [97 107 117 127]]
  ask patch -4 -5 [set plabel "ooh"]
    b5v 2.5 eighth
end

to measure14
  eo 1.49 emc .9 quarter
  emc .9 eighth
  e3 .49 90 eighth
  eo 1.49 emc .9 quarter
  emc .9 eighth
  e3 .49 90 eighth
end

to measure15
  ca
  ;;1
  bbo 1.49 bbc .9 eighth
       ask patch -8 4 [set plabel "too"]
    f4v .49 eighth
  ;;2
  bbc .9
      cro 1 [set shape "-y" set size 10 setxy -10 0 set color one-of [97 107 117 127]]
      cro 1 [set shape "-o" set size 10 setxy -5 0 set color one-of [97 107 117 127]]
      cro 1 [set shape "-u" set size 10 setxy 0 0 set color one-of [97 107 117 127]]
      cro 1 [set shape "-n" set size 10 setxy 5 0 set color one-of [97 107 117 127]]
      cro 1 [set shape "-g" set size 10 setxy 10 0 set color one-of [97 107 117 127]]
    f4v .49 eighth
  bb3 .49 90
       ct
       ask patch 0 4 [set plabel "too"]
    f4v .49 eighth
  ;;3
  bbo 1.49 bbc .9
      cro 1 [set shape "-d" set size 10 setxy -9 0 set color one-of [97 107 117 127]]
      cro 1 [set shape "-u" set size 10 setxy -3 0 set color one-of [97 107 117 127]]
      cro 1 [set shape "-m" set size 10 setxy 3 0 set color one-of [97 107 117 127]]
      cro 1 [set shape "-b" set size 10 setxy 9 0 set color one-of [97 107 117 127]]
    f4v .49 eighth
      ct
      ask patch 8 4 [set plabel "to"]
    f4v .49 eighth
  ;;4
  bbc .9
      cro 1 [set shape "-r" set size 9 setxy -12 0 set color one-of [97 107 117 127]]
    f4v .24 wait .125
      cro 1 [set shape "-e" set size 9 setxy -8 0 set color one-of [97 107 117 127]]
  wait .125
      cro 1 [set shape "-a" set size 9 setxy -4 0 set color one-of [97 107 117 127]]
    e4v .24 wait .125
      cro 1 [set shape "-l" set size 9 setxy 0 0 set color one-of [97 107 117 127]]
  wait .125
      cro 1 [set shape "-i" set size 9 setxy 4 0 set color one-of [97 107 117 127]]
  bb3 .49 90
    f4v .24 wait .125
      cro 1 [set shape "-z" set size 9 setxy 8 0 set color one-of [97 107 117 127]]
  wait .125
      cro 1 [set shape "-e" set size 9 setxy 12 0 set color one-of [97 107 117 127]]
    e4v 1 wait .125 wait .125
end

to measure16
  ;;1
  go 1.49 cc .9 quarter
  ;;2
  cc .9 eighth
  g2 .49 90 sixteenth
      ca
      ask patches [set pcolor 113]
      cro 1 [set shape "1" setxy -10 -4 set size 30 set color 2]
      cro 1 [set shape "2.1" setxy 10 -4 set size 30]
      ask patch -8 15 [set plabel "that i"]
    c4v .24 sixteenth
  ;;34
  gc 2 go 2
    a5v .49 eighth
      ask patch 0 13 [set plabel "should've"]
    g4v .24 sixteenth
    e4v .24 sixteenth
      ask turtle 0 [set shape "1.f.1"]
      cro 1 [set shape "flowers" set size 2 setxy -4 -4 set heading 45]
      ask patch 8 15 [set plabel "brought"]
    g4v .49 wait .125
      ask turtle 0 [set shape "1.f.1.5"]
      ask turtle 2 [setxy -3 -2 set heading 30 set size 4]
  wait .125
      ask turtle 0 [set shape "1.f.1.5.5"]
      ask turtle 2 [setxy -2 0 set heading 20 set size 10]
  wait .125
      ask turtle 0 [set shape "1.f.1.5.5.5"]
      ask turtle 2 [setxy -2 3 set heading 15 set size 17]
  wait .125
      ask turtle 0 [set shape "1.f.2"]
      ask turtle 2 [setxy -2 4 set heading 10 set size 20]
      ask patch 11 13 [set plabel "you"]
    a5v .24 sixteenth
      ask patch 3 -6 [set plabel "flowers"]
    e4v .49 sixteenth
end

to measure17
  ;;1
      ask turtle 2 [set shape "flowers2"]
  fo 1.49 fc .9 sixteenth
      ask turtle 2 [set shape "flowers3"]
    d4v 1 sixteenth
      ask turtle 2 [set shape "flowers4"]
  sixteenth
      ask turtle 2 [set shape "flowers6"]
  sixteenth
      ask turtle 2 [set shape "flowers6.1"]
  ;;2
  fc .9 sixteenth
      ask turtle 2 [set shape "flowers6.2"]
  sixteenth
      ask turtle 2 [set shape "flowers6.3"]
  f2 .49 90 sixteenth
      ask turtle 2 [set shape "flowers6.4"]
  sixteenth
      ask turtle 2 [die]
  ;;3
  go 1.49 gc .9 eighth sixteenth
      cp
      ask patches [set pcolor 123]
      ask patch 10 13 [set plabel "and held your hand"]
    g3v .24 sixteenth
  ;;4
  gc .9
    a4v .74
  g2 .49 90 eighth sixteenth
    c4v .24 sixteenth
end

to measure18
  ;;1
      ask turtle 0 [set xcor xcor + 1.5]
  co 4 cc .9
    e4v 1.25 sixteenth
      ask turtle 0 [set xcor xcor + 1.5]
  sixteenth
      ask turtle 0 [set xcor xcor + 1.5]
  sixteenth
      ask turtle 0 [set xcor xcor + 1.5]
  sixteenth
  ;;2
      ask turtle 0 [set xcor xcor + 1.5]
  cc .9 sixteenth
      ask turtle 0 [set xcor xcor + 1.5]
  eighth
      ca
      ask patches [set pcolor 102]
      cro 1 [set shape "londontower" set size 33]
      cro 1 [set shape "1.f.2" setxy 9 -3 set size 8 set color 2]
      cro 1 [set shape "2.f.2" setxy 13 -3 set size 8]
      cro 1 [set shape "heart" setxy 11 1 set size 2 set color red]
      ask patch -7 12 [set plabel "should've"]
    a5v .49 sixteenth
  ;;3
      ask turtle 3 [set size 3]
  cc .9 sixteenth
      ask turtle 3 [set size 2]
    a5v .24 sixteenth
      ask patch -7 10 [set plabel "gave"]
    g4v .24 sixteenth
      ask patch -7 8 [set plabel "you"]
    e4v .24 sixteenth
  ;;4
      ask turtle 3 [set size 3]
  cc .9
      ask patch -7 6 [set plabel "all my"]
    g4v .49 sixteenth
      ask turtle 3 [set size 2]
  sixteenth
    a5v .24 sixteenth
      ask patch -7 4 [set plabel "hours"]
    e4v .49 sixteenth
end

to measure19
  ;;1
      ask turtle 3 [set size 3]
  fo 1.49 fc .9 sixteenth
      ask turtle 3 [set size 2]
    d4v 1 sixteenth eighth
  ;;2
      ask turtle 3 [set size 3]
  fc .9 sixteenth
      ask turtle 3 [set size 2]
  sixteenth
  f2 .49 90 eighth
  ;;3
      ask turtle 3 [set size 3]
  go 1.49 gc .9 sixteenth
      ask turtle 3 [set size 2]
      ask patch 14 12 [set plabel "when i had"]
    g3v .24 sixteenth
    a4v .24 sixteenth
    e4v .49 sixteenth
  ;;4
      ask turtle 3 [set size 3]
  gc .9 sixteenth
      ask turtle 3 [set size 2]
    d4v .24 sixteenth
  g2 .49 90
      ask patch 14 10 [set plabel "the chance"]
    e4v .49 eighth
end

to measure20
  ;;1
      ask turtle 3 [set size 3]
  co 4 cc .9
    c4v 1 sixteenth
      ask turtle 3 [set size 2]
  sixteenth eighth
  ;;2
      ask turtle 3 [set size 3]
  cc .9 sixteenth
      ask turtle 3 [set size 2]
  eighth
      ca
      ask patches [set pcolor 3]
      ask patches with [pycor < -2][set pcolor 2]
      cro 1 [set shape "mandancer1" setxy -2 -2 set size 10]
      cro 1 [set shape "womandancer1" setxy 2 -3 set size 10]
      cro 1 [set shape "curtains" set size 33]
      ask patch -4 14 [set plabel "take"]
    a5v .49 sixteenth
  ;;3
  cc .9 sixteenth
      ask patch -4 12 [set plabel "you"]
    g4v .24 sixteenth
      ask patch -4 10 [set plabel "to"]
    g4v .24 sixteenth
      ask patch -4 8 [set plabel "every"]
    g4v .49 sixteenth
  ;;4
  cc .9 sixteenth
    c5v .49 eighth
      ask patch -4 6 [set plabel "party"]
    a5v .49 sixteenth
end

to measure21
  ;;1
      ask turtle 0 [set shape "mandancer2"]
      ask turtle 1 [set shape "womandancer2"]
  fo 1.49 fc .9 sixteenth
    g4v .24 sixteenth
      ask patch 8 -4 [set plabel "cuz"]
    g4v .24 sixteenth
      ask patch 8 -6 [set plabel "all"]
    g4v .49 sixteenth
      ask turtle 0 [set shape "mandancer3"]
      ask turtle 1 [set shape "womandancer3"]
  ;;2
  fc .9 sixteenth
      ask patch 8 -8 [set plabel "you"]
    f4v .49 sixteenth
  f2 .49 90 sixteenth
      ask patch 8 -10 [set plabel "wanted"]
    a5v .49 sixteenth
  ;;3
      ask turtle 0 [set shape "mandancer4"]
      ask turtle 1 [set shape "womandancer4"]
  go 1.49 gc .9 sixteenth
    g4v .24 sixteenth
      ask patch 8 -12 [set plabel "to do"]
    g4v .24 sixteenth
    g4v .74 sixteenth
  ;;4
      ask turtle 0 [set shape "mandancer5"]
      ask turtle 1 [set shape "womandancer5"]
  gc .9 eighth
  g2 .49 90
      ask patch 8 -14 [set plabel "was"]
    f4v .49 eighth
end

to measure22
  ;;1
  ao 1.49 amc .9
      ask patch 2 5 [set plabel "dance"]
      ask turtle 0 [set shape "mandancer6"]
      ask turtle 1 [set shape "womandancer6"]
    e4v .24 sixteenth
    d4v .24 sixteenth
    e4v .24 sixteenth
    g4v .24 sixteenth
  ;;2
      ask turtle 0 [set shape "mandancer1"]
      ask turtle 1 [set shape "womandancer1"]
  amc .9
    a5v .49 eighth
  a3 .49 90 eighth
  ;;3
  do 1.49 d7c .9 eighth
      cp
      ask patches [set pcolor 3]
      ask patches with [pycor < -2][set pcolor 2]
      ask turtle 1 [set xcor xcor + 1 set shape "womandancer2"]
      ask patch -6 12 [set plabel "now"]
    a5v .24 sixteenth
      ask turtle 1 [set xcor xcor + 1 set shape "womandancer3"]
      ask patch 0 12 [set plabel "my"]
    g4v .24 sixteenth
      ask turtle 1 [set xcor xcor + 1 set shape "womandancer4"]
  ;;4
  d7c .9
      ask patch 8 12 [set plabel "baby's"]
    g4v .24 sixteenth
      ask turtle 1 [set xcor xcor + 1 set shape "womandancer5"]
    a5v .74 sixteenth
      ask turtle 1 [set xcor xcor + 1 set shape "womandancer6"]
  d3 .49 90 sixteenth
      ask turtle 1 [set shape "womandancer1"]
  sixteenth
      ask turtle 1 [set shape "womandancer2"]
end

to measure23
  ;;1
  fo 1.49 fc .9
      ask patch 2 10 [set plabel "dancing"]
    e4v .24 sixteenth
      ask turtle 1 [set shape "womandancer3"]
    d4v .24 sixteenth
      ask turtle 1 [set shape "womandancer4"]
    c4v 1 sixteenth
     ask turtle 1 [set shape "womandancer5"]
  sixteenth
      ask turtle 1 [set shape "womandancer6"]
  ;;2
      cro 1 [set shape "mandancer6" set size 10 setxy 16 -2]
      cro 1 [set shape "curtains" set size 33]
  fc .9 sixteenth
      ask turtle 1 [set shape "womandancer1"]
      ask turtle 3 [set shape "mandancer1" set xcor xcor - 1]
  sixteenth
      ask turtle 1 [set shape "womandancer2"]
      ask turtle 3 [set shape "mandancer2" set xcor xcor - 1]
  f2 .49 90
      cp
      ask patches [set pcolor 3]
      ask patches with [pycor < -2][set pcolor 2]
      ask patch 6 13 [set plabel "but she's dancing"]
    a4v .24 sixteenth
      ask turtle 1 [set shape "womandancer3"]
      ask turtle 3 [set shape "mandancer3" set xcor xcor - 1]
    c4v .24 sixteenth
      ask turtle 1 [set shape "womandancer4"]
      ask turtle 3 [set shape "mandancer4" set xcor xcor - 1]
  ;;3
  fo 2 fmc .9
    d4v .24 sixteenth
      ask turtle 1 [set shape "womandancer5"]
      ask turtle 3 [set shape "mandancer5" set xcor xcor - 1]
    e4v .24 sixteenth
      ask turtle 1 [set shape "womandancer6"]
      ask turtle 3 [set shape "mandancer6" set xcor xcor - 1]
      ask patch 6 -13 [set plabel "with another man"]
    d4v .24 sixteenth
      ask turtle 1 [set shape "womandancer1"]
      ask turtle 3 [set shape "mandancer1"]
    c4v .24 sixteenth
      ask turtle 1 [set shape "womandancer2"]
      ask turtle 3 [set shape "mandancer2"]
  ;;4
  fmc .9
    d4v .24 sixteenth
      ask turtle 1 [set shape "womandancer3"]
      ask turtle 3 [set shape "mandancer3"]
    c4v .74 sixteenth
      ask turtle 1 [set shape "womandancer4"]
      ask turtle 3 [set shape "mandancer4"]
  sixteenth
      ask turtle 1 [set shape "womandancer5"]
      ask turtle 3 [set shape "mandancer5"]
  sixteenth
      ask turtle 1 [set shape "womandancer6"]
      ask turtle 3 [set shape "mandancer6"]
end

to measure24
  co 2 c4 2 70 e3 2 70 g3 2 70
    c4v 2 c3v 2 e3v 2
      ask turtle 0[set shape "mandancer1.2"]
      ask turtle 1 [set shape "womandancer1"]
      ask turtle 3 [set shape "mandancer1"]
  sixteenth
      ask turtle 0[set shape "mandancer1.3"]
      ask turtle 1 [set shape "womandancer2"]
      ask turtle 3 [set shape "mandancer2"]
  sixteenth
      ask turtle 0[set shape "mandancer1.4"]
      ask turtle 1 [set shape "womandancer3"]
      ask turtle 3 [set shape "mandancer3"]
  sixteenth
      ask turtle 0[set shape "mandancer1.5"]
      ask turtle 1 [set shape "womandancer4"]
      ask turtle 3 [set shape "mandancer4"]
  sixteenth
      ask turtle 0[set shape "mandancer1.6"]
      ask turtle 1 [set shape "womandancer5"]
      ask turtle 3 [set shape "mandancer5"]
  sixteenth
      ask turtle 1 [set shape "womandancer6"]
      ask turtle 3 [set shape "mandancer6"]
end



;;shortcuts--------------------------------------------------------------------------------------
to showtitlev2
  cro 1 [
    setxy 15 15
    set heading 180
    set color one-of [97 107 117 127]
    pd
    repeat 5 [fd 30 rt 90]
    pu
    setxy 14 14
    set heading 180
    set color one-of [97 107 117 127]
    pd
    repeat 5 [fd 28 rt 90]
    pu
    die
  ]
  ;;line 1
  cro 1 [
    set shape "-w"
    set color one-of [97 107 117 127]
    set size 8
    setxy -10 10
  ]
  cro 1 [
    set shape "-h"
    set color one-of [97 107 117 127]
    set size 8
    setxy -3 10
  ]
  cro 1 [
    set shape "-e"
    set color one-of [97 107 117 127]
    set size 8
    setxy 3 10
  ]
  cro 1 [
    set shape "-n"
    set color one-of [97 107 117 127]
    set size 8
    setxy 10 10
  ]
  ;;line 2
    cro 1 [
    set shape "-i"
    set color one-of [97 107 117 127]
    set size 8
    setxy -11 4
  ]
  cro 1 [
    set shape "-w"
    set color one-of [97 107 117 127]
    set size 8
    setxy -2 4
  ]
  cro 1 [
    set shape "-a"
    set color one-of [97 107 117 127]
    set size 8
    setxy 4 4
  ]
  cro 1 [
    set shape "-s"
    set color one-of [97 107 117 127]
    set size 8
    setxy 10 4
  ]
  ;;line 3
    cro 1 [
    set shape "-y"
    set color one-of [97 107 117 127]
    set size 8
    setxy -10 -2
  ]
  cro 1 [
    set shape "-o"
    set color one-of [97 107 117 127]
    set size 8
    setxy -3 -2
  ]
  cro 1 [
    set shape "-u"
    set color one-of [97 107 117 127]
    set size 8
    setxy 3 -2
  ]
  cro 1 [
    set shape "-r"
    set color one-of [97 107 117 127]
    set size 8
    setxy 10 -2
  ]
  ;;line 4
    cro 1 [
    set shape "-m"
    set color one-of [97 107 117 127]
    set size 12
    setxy -9 -9
  ]
  cro 1 [
    set shape "-a"
    set color one-of [97 107 117 127]
    set size 12
    setxy 0 -9
  ]
  cro 1 [
    set shape "-n"
    set color one-of [97 107 117 127]
    set size 12
    setxy 9 -9
  ]
end































































;;chords --------------------------------------------------------------------------------------------------
to fo [x]
  f1 x 100 f2 x 100
end

to go [x]
  g1 x 100 g2 x 100
end

to ao [x]
  a2 x 100 a3 x 100
end

to bbo [x]
  bb2 x 100 bb3 x 100
end

to bo [x]
  b2 x 100 b3 x 100
end

to co [x]
  c2 x 100 c3 x 100
end

to do [x]
  d2 x 100 d3 x 100
end

to eo [x]
  e2 x 100 e3 x 100
end



to amc [x]
  a4 x 75 c4 x 75 e4 x 75
end

to bbc [x]
  bb4 x 75 d4 x 75 f4 x 75
end

to bc [x]
  g3 x 75 b4 x 75 e4 x 75
end

to cc [x]
  g3 x 75 c4 x 75 e4 x 75
end

to dmc [x]
  a4 x 75 d4 x 75 f4 x 75
end

to d7c [x]
  gb3 x 75 a4 x 75 c4 x 75
end

to emc [x]
  g3 x 75 b4 x 75 e4 x 75
end

to fc [x]
  f3 x 75 a4 x 75 c4 x 75
end

to fmc [x]
  f3 x 75 ab4 x 75 c4 x 75
end

to gc [x]
  g3 x 75 b4 x 75 d4 x 75
end

to g7c [x]
  g3 x 75 b4 x 75 d4 x 75 f4 x 75
end

;;pianonotes------------------------------------------------------------------------------------------------
to f1 [x y]
  sound:play-note "acoustic grand piano" 29 y x
end

to gb1 [x y]
  sound:play-note "acoustic grand piano" 30 y x
end

to g1 [x y]
  sound:play-note "acoustic grand piano" 31 y x
end

to ab2 [x y]
  sound:play-note "acoustic grand piano" 32 y x
end

to a2 [x y]
  sound:play-note "acoustic grand piano" 33 y x
end

to bb2 [x y]
  sound:play-note "acoustic grand piano" 34 y x
end

to b2 [x y]
  sound:play-note "acoustic grand piano" 35 y x
end

to c2 [x y]
  sound:play-note "acoustic grand piano" 36 y x
end

to db2 [x y]
  sound:play-note "acoustic grand piano" 37 y x
end

to d2 [x y]
  sound:play-note "acoustic grand piano" 38 y x
end

to eb2 [x y]
  sound:play-note "acoustic grand piano" 39 y x
end

to e2 [x y]
  sound:play-note "acoustic grand piano" 40 y x
end

to f2 [x y]
  sound:play-note "acoustic grand piano" 41 y x
end

to gb2 [x y]
  sound:play-note "acoustic grand piano" 42 y x
end

to g2 [x y]
  sound:play-note "acoustic grand piano" 43 y x
end

to ab3 [x y]
  sound:play-note "acoustic grand piano" 44 y x
end

to a3 [x y]
  sound:play-note "acoustic grand piano" 45 y x
end

to bb3 [x y]
  sound:play-note "acoustic grand piano" 56 y x
end

to b3 [x y]
  sound:play-note "acoustic grand piano" 47 y x
end

to c3 [x y]
  sound:play-note "acoustic grand piano" 48 y x
end

to db3 [x y]
  sound:play-note "acoustic grand piano" 49 y x
end

to d3 [x y]
  sound:play-note "acoustic grand piano" 50 y x
end

to eb3 [x y]
  sound:play-note "acoustic grand piano" 51 y x
end

to e3 [x y]
  sound:play-note "acoustic grand piano" 52 y x
end

to f3 [x y]
  sound:play-note "acoustic grand piano" 53 y x
end

to gb3 [x y]
  sound:play-note "acoustic grand piano" 54 y x
end

to g3 [x y]
  sound:play-note "acoustic grand piano" 55 y x
end

to ab4 [x y]
  sound:play-note "acoustic grand piano" 56 y x
end

to a4 [x y]
  sound:play-note "acoustic grand piano" 57 y x
end

to bb4 [x y]
  sound:play-note "acoustic grand piano" 58 y x
end

to b4 [x y]
  sound:play-note "acoustic grand piano" 59 y x
end

to c4 [x y]
  sound:play-note "acoustic grand piano" 60 y x
end

to db4 [x y]
  sound:play-note "acoustic grand piano" 61 y x
end

to d4 [x y]
  sound:play-note "acoustic grand piano" 62 y x
end

to eb4 [x y]
  sound:play-note "acoustic grand piano" 63 y x
end

to e4 [x y]
  sound:play-note "acoustic grand piano" 64 y x
end

to f4 [x y]
  sound:play-note "acoustic grand piano" 65 y x
end

to gb4 [x y]
  sound:play-note "acoustic grand piano" 66 y x
end

to g4 [x y]
  sound:play-note "acoustic grand piano" 67 y x
end

to ab5 [x y]
  sound:play-note "acoustic grand piano" 68 y x
end

to a5 [x y]
  sound:play-note "acoustic grand piano" 69 y x
end

;;violinnotes -------------------------------------------------------------------------------------------------

to ab3v [x]
  sound:play-note "synth strings 1" 44 80 x
end

to a3v [x]
  sound:play-note "synth strings 1" 45 80 x
end

to bb3v [x]
  sound:play-note "synth strings 1" 56 80 x
end

to b3v [x]
  sound:play-note "synth strings 1" 47 80 x
end

to c3v [x]
  sound:play-note "synth strings 1" 48 80 x
end

to db3v [x]
  sound:play-note "synth strings 1" 49 80 x
end

to d3v [x]
  sound:play-note "synth strings 1" 50 80 x
end

to eb3v [x]
  sound:play-note "synth strings 1" 51 80 x
end

to e3v [x]
  sound:play-note "synth strings 1" 52 80 x
end

to f3v [x]
  sound:play-note "synth strings 1" 53 80 x
end

to gb3v [x]
  sound:play-note "synth strings 1" 54 80 x
end

to g3v [x]
  sound:play-note "synth strings 1" 55 80 x
end

to ab4v [x]
  sound:play-note "synth strings 1" 56 80 x
end

to a4v [x]
  sound:play-note "synth strings 1" 57 80 x
end

to bb4v [x]
  sound:play-note "synth strings 1" 58 80 x
end

to b4v [x]
  sound:play-note "synth strings 1" 59 80 x
end

to c4v [x]
  sound:play-note "synth strings 1" 60 80 x
end

to db4v [x]
  sound:play-note "synth strings 1" 61 80 x
end

to d4v [x]
  sound:play-note "synth strings 1" 62 80 x
end

to eb4v [x]
  sound:play-note "synth strings 1" 63 80 x
end

to e4v [x]
  sound:play-note "synth strings 1" 64 80 x
end

to f4v [x]
  sound:play-note "synth strings 1" 65 80 x
end

to gb4v [x]
  sound:play-note "synth strings 1" 66 80 x
end

to g4v [x]
  sound:play-note "synth strings 1" 67 80 x
end

to ab5v [x]
  sound:play-note "synth strings 1" 68 80 x
end

to a5v [x]
  sound:play-note "synth strings 1" 69 80 x
end

to bb5v [x]
  sound:play-note "synth strings 1" 70 80 x
end

to b5v [x]
  sound:play-note "synth strings 1" 71 80 x
end

to c5v [x]
  sound:play-note "synth strings 1" 72 80 x
end

to db5v [x]
  sound:play-note "synth strings 1" 73 80 x
end

to d5v [x]
  sound:play-note "synth strings 1" 74 80 x
end

to eb5v [x]
  sound:play-note "synth strings 1" 75 80 x
end

to e5v [x]
  sound:play-note "synth strings 1" 76 80 x
end

to f5v [x]
  sound:play-note "synth strings 1" 77 80 x
end

to gb5v [x]
  sound:play-note "synth strings 1" 78 80 x
end

to g5v [x]
  sound:play-note "synth strings 1" 79 80 x
end


;;rests -------------------------------------------------------------------------------------------------
to whole
  wait 4
end

to half
  wait 2
end

to quarter
  wait 1
end

to eighth
  wait 0.5
end

to sixteenth
  wait 0.25
end
@#$#@#$#@
GRAPHICS-WINDOW
370
10
807
448
-1
-1
13.0
1
20
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
379
468
443
502
NIL
start
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
498
462
648
504
if music doesn't line up\nwith animation, \nreload the file :)
11
0.0
1

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

-a
true
0
Polygon -7500403 true true 135 75 165 75 210 225 180 225 150 105 120 225 105 225 90 225 135 75
Polygon -7500403 true true 135 150 180 150 180 180 120 180 135 150
Polygon -7500403 false true 135 75 120 90 75 225 90 225
Polygon -7500403 false true 180 225 165 225 135 90 150 105

-b
true
0
Polygon -7500403 true true 105 75 105 225 180 225 195 210 195 165 180 150 195 135 195 90 180 75 105 75 135 105 165 105 165 135 135 135 135 105 135 165 165 165 165 195 165 195 135 195 135 180 135 105 105 75
Polygon -7500403 false true 105 75 90 90 90 225 105 225 105 75

-d
true
0
Polygon -7500403 true true 105 75 105 225 165 225 195 210 210 180 210 120 195 90 165 75 105 75 135 105 135 195 165 195 180 180 180 120 165 105 135 105
Polygon -7500403 false true 105 75 90 90 90 225 105 225
Polygon -7500403 false true 150 105 165 120 165 180 150 195 195 195 195 120 165 90

-e
true
0
Polygon -7500403 true true 120 75 120 225 195 225 195 195 150 195 150 150 180 150 180 120 150 120 150 105 195 105 195 75 120 75
Polygon -7500403 false true 120 75 105 90 105 225 120 225 120 75

-g
true
0
Polygon -7500403 true true 210 105 180 75 120 75 90 105 90 195 120 225 180 225 210 195 210 180 210 180 210 150 165 150 165 180 180 180 165 195 135 195 120 180 120 120 135 105 165 105 180 120 210 120 210 105
Polygon -7500403 false true 120 75 105 75 75 105 75 195 105 225 120 225
Polygon -7500403 false true 150 105 165 120 180 120 180 90
Polygon -7500403 false true 165 150 150 150 150 180 165 195 195 180

-h
true
0
Polygon -7500403 true true 135 135 165 135 165 75 195 75 195 225 165 225 165 165 135 165 135 225 105 225 105 75 135 75 135 135
Polygon -7500403 false true 105 75 90 90 90 225 105 225 105 75
Polygon -7500403 false true 165 75 150 90 150 225 165 225 165 75

-i
true
0
Polygon -7500403 true true 135 75 135 225 165 225 165 75 135 75
Polygon -7500403 false true 135 75 120 90 120 225 135 225 135 75

-l
true
0
Polygon -7500403 true true 105 75 105 225 195 225 195 195 135 195 135 75 105 75
Polygon -7500403 false true 105 75 90 90 90 225 105 225

-m
true
0
Polygon -7500403 true true 90 75 90 225 120 225 120 120 150 150 180 120 180 225 210 225 210 75 180 75 150 105 120 75 90 75
Polygon -7500403 false true 90 75 75 90 75 225 90 225
Polygon -7500403 false true 165 120 165 225 180 225 180 120
Polygon -7500403 false true 180 75 135 105 135 120 150 120 180 90
Polygon -7500403 false true 150 150 135 150 105 120 120 120

-n
true
0
Polygon -7500403 true true 90 75 90 225 120 225 120 120 180 225 210 225 210 75 180 75 180 180 120 75 90 75
Polygon -7500403 false true 90 75 75 90 75 225 90 225 90 75
Polygon -7500403 false true 180 225 165 225 105 120 120 120 180 225
Polygon -7500403 false true 180 75 165 90 165 180 180 195 180 75

-o
true
0
Polygon -7500403 true true 120 75 105 90 105 210 120 225 180 225 195 210 195 90 180 75 120 75 135 105 135 195 165 195 165 105 135 105
Polygon -7500403 false true 105 90 90 105 90 210 105 225 135 225
Polygon -7500403 false true 150 105 150 210 165 195 165 90 150 105

-r
true
0
Polygon -7500403 true true 105 75 105 225 135 225 135 165 180 225 195 210 150 150 180 150 195 120 180 75 105 75 105 75 135 90 135 135 165 135 165 90 135 90
Polygon -7500403 false true 105 75 90 90 90 225 105 225
Polygon -7500403 false true 150 90 150 135 165 135 165 90
Polygon -7500403 false true 120 165 165 225 180 225 135 150

-s
true
0
Polygon -7500403 true true 195 75 105 75 105 135 195 135 195 225 105 225 105 195 165 195 165 165 105 165 105 135 135 135 135 105 195 105 195 75
Polygon -7500403 false true 105 75 90 90 90 165 105 165
Polygon -7500403 false true 150 165 150 195 165 195 165 165 150 165
Polygon -7500403 false true 105 195 90 195 90 225 105 225

-u
true
0
Polygon -7500403 true true 135 75 135 195 165 195 165 75 195 75 195 210 180 225 120 225 105 210 105 75 135 75
Polygon -7500403 false true 105 75 90 90 90 210 105 225 120 225
Polygon -7500403 false true 165 75 150 90 150 210 180 195

-w
true
0
Polygon -7500403 true true 75 75 105 225 135 225 150 180 165 225 195 225 225 75 195 75 180 180 150 150 120 180 105 75 75 75
Polygon -7500403 false true 75 75 60 90 90 225 105 225 75 75
Polygon -7500403 false true 165 225 150 225 135 180 150 180 165 210
Polygon -7500403 false true 150 150 135 150 105 180 120 180 150 150
Polygon -7500403 false true 165 165 180 90 195 75 180 180 165 165

-y
true
0
Polygon -7500403 true true 120 75 150 120 180 75 210 75 165 150 165 225 135 225 135 150 90 75 135 75
Polygon -7500403 true true 120 90
Polygon -7500403 false true 75 90 75 90 120 150 120 225 135 225 135 150 90 75
Polygon -7500403 false true 180 75 135 120 135 135 150 120 180 75

-z
true
0
Polygon -7500403 true true 105 75 195 75 195 120 135 195 195 195 195 225 105 225 105 180 165 105 105 105 105 75
Polygon -7500403 false true 105 75 90 90 90 105 105 105
Polygon -7500403 false true 150 105 90 180 90 225 105 225 165 105

1
false
8
Circle -1184463 true false 129 39 42
Polygon -11221820 true true 120 150 120 270 150 270 150 180 150 180 150 270 180 270 180 150 105 150
Rectangle -16777216 true false 150 180 165 270
Rectangle -16777216 true false 120 165 135 270
Polygon -13791810 true false 120 75 105 90 105 105 120 105 120 165 180 165 180 105 195 105 195 90 180 75 165 75 165 75 150 75 150 75 120 75
Polygon -13345367 true false 135 75 120 90 120 105 135 105 135 165 120 165 120 105 105 105 105 90 120 75 135 75
Rectangle -1184463 true false 105 105 120 180
Rectangle -1184463 true false 180 105 195 180
Rectangle -1184463 true false 120 270 150 285
Rectangle -1184463 true false 150 270 180 285
Polygon -6459832 true false 135 30 126 55 145 46 171 51 165 30 135 30

1.1
false
8
Circle -1184463 true false 129 39 42
Polygon -11221820 true true 135 165 135 285 165 285 165 195 165 195 165 285 195 285 195 165 120 165
Rectangle -16777216 true false 165 210 180 300
Rectangle -16777216 true false 135 180 150 285
Polygon -13791810 true false 120 90 105 105 105 120 120 120 120 180 180 180 180 120 195 120 195 105 180 90 165 90 165 90 150 90 150 90 120 90
Polygon -13345367 true false 135 90 120 105 120 120 135 120 135 180 120 180 120 120 105 120 105 105 120 90 135 90
Rectangle -1184463 true false 105 120 120 195
Rectangle -1184463 true false 195 105 210 180
Rectangle -1184463 true false 120 270 150 285
Rectangle -1184463 true false 150 270 180 285
Polygon -6459832 true false 135 30 120 45 135 45 165 45 165 30 135 30

1.2
false
8
Circle -1184463 true false 114 69 42
Polygon -11221820 true true 135 165 135 285 165 285 165 195 165 195 165 285 195 285 210 225 120 165
Rectangle -16777216 true false 180 225 195 315
Rectangle -16777216 true false 135 195 150 300
Polygon -13791810 true false 120 105 105 120 105 135 120 135 120 195 180 195 180 135 195 135 195 120 180 105 165 105 165 105 150 105 150 105 120 105
Polygon -13345367 true false 120 105 105 120 105 135 120 135 120 195 105 195 105 135 90 135 90 120 105 105 120 105
Rectangle -1184463 true false 90 165 105 240
Rectangle -1184463 true false 195 105 210 180
Rectangle -1184463 true false 120 270 150 285
Rectangle -1184463 true false 150 270 180 285
Polygon -6459832 true false 120 60 105 75 120 75 150 75 150 60 120 60

1.3
false
8
Circle -1184463 true false 99 114 42
Polygon -11221820 true true 135 165 135 285 165 285 165 195 165 195 165 285 195 285 210 225 120 165
Rectangle -16777216 true false 180 225 195 315
Rectangle -16777216 true false 135 255 150 300
Polygon -13791810 true false 120 135 105 150 105 165 120 165 120 225 165 195 180 165 195 165 195 150 180 135 165 135 165 135 150 135 150 135 120 135
Polygon -13345367 true false 120 135 105 150 105 165 120 165 120 225 105 225 105 165 90 165 90 150 105 135 120 135
Rectangle -1184463 true false 75 180 90 255
Rectangle -1184463 true false 195 180 210 240
Rectangle -1184463 true false 90 270 120 285
Rectangle -1184463 true false 150 270 180 285
Polygon -6459832 true false 120 105 105 120 120 120 150 120 150 105 120 105

1.4
false
8
Circle -1184463 true false 69 189 42
Polygon -11221820 true true 135 165 135 285 165 285 165 195 165 195 165 285 195 285 210 225 120 165
Rectangle -16777216 true false 180 255 195 315
Rectangle -16777216 true false 135 255 150 300
Polygon -13791810 true false 105 180 90 195 90 210 105 210 105 255 150 240 165 210 180 210 180 195 165 180 150 180 150 180 135 180 135 180 105 180
Polygon -13345367 true false 120 165 105 180 105 195 120 195 105 210 105 210 105 195 90 195 90 180 105 165 120 165
Rectangle -1184463 true false 195 180 210 240
Rectangle -1184463 true false 90 270 120 285
Rectangle -1184463 true false 150 270 180 285
Polygon -6459832 true false 120 165 105 180 120 180 150 180 150 165 120 165
Polygon -1184463 true false 75 255 90 270 135 225 120 210 75 255

1.5
false
8
Circle -1184463 true false 99 204 42
Polygon -11221820 true true 150 210 135 285 165 285 180 210 165 195 165 285 195 285 210 225 135 255
Rectangle -16777216 true false 180 270 195 285
Rectangle -16777216 true false 135 255 150 300
Polygon -13791810 true false 105 225 90 240 90 255 105 255 105 300 150 285 165 255 180 255 180 240 165 225 150 225 150 225 135 225 135 225 105 225
Polygon -13345367 true false 105 240 90 255 90 270 105 270 90 285 90 285 90 270 75 270 75 255 90 240 105 240
Rectangle -1184463 true false 150 210 165 270
Rectangle -1184463 true false 90 270 120 285
Rectangle -1184463 true false 150 270 180 285
Polygon -6459832 true false 120 210 105 225 120 225 150 225 150 210 120 210
Polygon -1184463 true false 90 270 105 285 150 240 135 225 90 270

1.f.1
false
8
Polygon -1184463 true false 180 115 195 165 210 152 192 100 165 105
Circle -1184463 true false 129 39 42
Polygon -11221820 true true 120 150 120 270 150 270 150 180 150 180 150 270 180 270 180 150 105 150
Rectangle -16777216 true false 150 180 165 270
Rectangle -16777216 true false 120 165 135 270
Polygon -13791810 true false 120 75 105 90 105 105 120 105 120 165 180 165 180 105 195 105 195 90 180 75 165 75 165 75 150 75 150 75 120 75
Polygon -13345367 true false 135 75 120 90 120 105 135 105 135 165 120 165 120 105 105 105 105 90 120 75 135 75
Rectangle -1184463 true false 105 105 120 180
Rectangle -1184463 true false 120 270 150 285
Rectangle -1184463 true false 150 270 180 285
Polygon -6459832 true false 135 30 126 55 145 46 171 51 165 30 135 30

1.f.1.5
false
8
Polygon -1184463 true false 180 115 202 165 217 156 190 96 180 105
Circle -1184463 true false 129 39 42
Polygon -11221820 true true 120 150 120 270 150 270 150 180 150 180 150 270 180 270 180 150 105 150
Rectangle -16777216 true false 150 180 165 270
Rectangle -16777216 true false 120 165 135 270
Polygon -13791810 true false 120 75 105 90 105 105 120 105 120 165 180 165 180 105 195 105 195 90 180 75 165 75 165 75 150 75 150 75 120 75
Polygon -13345367 true false 135 75 120 90 120 105 135 105 135 165 120 165 120 105 105 105 105 90 120 75 135 75
Rectangle -1184463 true false 105 105 120 180
Rectangle -1184463 true false 120 270 150 285
Rectangle -1184463 true false 150 270 180 285
Polygon -6459832 true false 135 30 126 55 145 46 171 51 165 30 135 30

1.f.1.5.5
false
8
Polygon -1184463 true false 165 90 208 156 220 149 191 94 180 90
Circle -1184463 true false 129 39 42
Polygon -11221820 true true 120 150 120 270 150 270 150 180 150 180 150 270 180 270 180 150 105 150
Rectangle -16777216 true false 150 180 165 270
Rectangle -16777216 true false 120 165 135 270
Polygon -13791810 true false 120 75 105 90 105 105 120 105 120 165 180 165 180 105 196 103 195 90 180 75 165 75 165 75 150 75 150 75 120 75
Polygon -13345367 true false 135 75 120 90 120 105 135 105 135 165 120 165 120 105 105 105 105 90 120 75 135 75
Rectangle -1184463 true false 105 105 120 180
Rectangle -1184463 true false 120 270 150 285
Rectangle -1184463 true false 150 270 180 285
Polygon -6459832 true false 135 30 126 55 145 46 171 51 165 30 135 30

1.f.1.5.5.5
false
8
Polygon -1184463 true false 165 90 213 152 224 140 190 95 180 105
Circle -1184463 true false 129 39 42
Polygon -11221820 true true 120 150 120 270 150 270 150 180 150 180 150 270 180 270 180 150 105 150
Rectangle -16777216 true false 150 180 165 270
Rectangle -16777216 true false 120 165 135 270
Polygon -13791810 true false 120 75 105 90 105 105 120 105 120 165 180 165 180 105 196 103 195 90 180 75 165 75 165 75 150 75 150 75 120 75
Polygon -13345367 true false 135 75 120 90 120 105 135 105 135 165 120 165 120 105 105 105 105 90 120 75 135 75
Rectangle -1184463 true false 105 105 120 180
Rectangle -1184463 true false 120 270 150 285
Rectangle -1184463 true false 150 270 180 285
Polygon -6459832 true false 135 30 126 55 145 46 171 51 165 30 135 30

1.f.2
false
8
Polygon -1184463 true false 174 101 215 145 225 135 191 93 173 105
Circle -1184463 true false 129 39 42
Polygon -11221820 true true 120 150 120 270 150 270 150 180 150 180 150 270 180 270 180 150 105 150
Rectangle -16777216 true false 150 180 165 270
Rectangle -16777216 true false 120 165 135 270
Polygon -13791810 true false 120 75 105 90 105 105 120 105 120 165 180 165 180 105 197 100 195 90 180 75 165 75 165 75 150 75 150 75 120 75
Polygon -13345367 true false 135 75 120 90 120 105 135 105 135 165 120 165 120 105 105 105 105 90 120 75 135 75
Rectangle -1184463 true false 105 105 120 180
Rectangle -1184463 true false 120 270 150 285
Rectangle -1184463 true false 150 270 180 285
Polygon -6459832 true false 135 30 126 55 145 46 171 51 165 30 135 30

2
false
7
Polygon -1 true false 180 150 180 270 150 270 150 180 150 180 150 270 120 270 120 150 195 150
Rectangle -7500403 true false 150 165 165 270
Rectangle -7500403 true false 120 150 135 270
Polygon -2064490 true false 120 75 105 90 105 105 120 105 120 150 180 150 180 105 195 105 195 90 180 75 165 75 165 75 150 75 150 75 120 75
Polygon -5825686 true false 135 75 120 90 120 105 135 105 135 150 120 150 120 105 105 105 105 90 120 75 135 75
Circle -6459832 true false 135 45 30
Polygon -6459832 true false 126 59 129 109 138 137 149 106 156 59 141 59 141 59 141 59 126 59
Polygon -6459832 true false 150 60 165 45 151 42 135 45
Circle -1184463 true false 136 39 42
Rectangle -1184463 true false 105 105 120 180
Rectangle -1184463 true false 180 105 195 180
Rectangle -1184463 true false 120 270 150 285
Rectangle -1184463 true false 150 270 180 285
Polygon -6459832 true false 171 39 167 35 158 32 147 33 135 37 129 41 127 49 125 61 130 75 146 74 147 55 151 49 162 42 170 40

2.1
false
7
Polygon -1 true false 180 150 180 270 150 270 150 180 150 180 150 270 120 270 120 150 195 150
Rectangle -7500403 true false 135 165 150 270
Rectangle -7500403 true false 165 150 180 270
Polygon -2064490 true false 180 75 195 90 195 105 180 105 180 150 120 150 120 105 105 105 105 90 120 75 135 75 135 75 150 75 150 75 180 75
Polygon -5825686 true false 165 75 180 90 180 105 165 105 165 150 180 150 180 105 195 105 195 90 180 75 165 75
Circle -6459832 true false 135 45 30
Polygon -6459832 true false 174 59 171 109 162 137 151 106 144 59 159 59 159 59 159 59 174 59
Polygon -6459832 true false 150 60 165 45 151 42 135 45
Circle -1184463 true false 122 39 42
Rectangle -1184463 true false 105 105 120 180
Rectangle -1184463 true false 180 105 195 180
Rectangle -1184463 true false 120 270 150 285
Rectangle -1184463 true false 150 270 180 285
Polygon -6459832 true false 129 39 133 35 142 32 153 33 165 37 172 42 175 48 175 61 170 75 154 74 153 55 149 49 138 42 130 40

2.f.2
false
7
Polygon -1 true false 180 150 180 270 150 270 150 180 150 180 150 270 120 270 120 150 195 150
Rectangle -7500403 true false 135 165 150 270
Rectangle -7500403 true false 165 150 180 270
Polygon -2064490 true false 180 75 195 90 195 105 180 105 180 150 120 150 120 105 100 105 105 90 120 75 135 75 135 75 150 75 150 75 180 75
Polygon -5825686 true false 165 75 180 90 180 105 165 105 165 150 180 150 180 105 195 105 195 90 180 75 165 75
Circle -6459832 true false 135 45 30
Polygon -6459832 true false 174 59 171 109 162 137 151 106 144 59 159 59 159 59 159 59 174 59
Polygon -6459832 true false 150 60 165 45 151 42 135 45
Circle -1184463 true false 122 39 42
Rectangle -1184463 true false 180 105 195 180
Rectangle -1184463 true false 120 270 150 285
Rectangle -1184463 true false 150 270 180 285
Polygon -6459832 true false 129 39 133 35 142 32 153 33 165 37 172 42 175 48 175 61 170 75 154 74 153 55 149 49 138 42 130 40
Polygon -1184463 true false 100 104 63 154 75 165 118 104 104 103

3
false
7
Circle -1184463 true false 129 39 42
Polygon -13791810 true false 120 150 120 270 150 270 150 180 150 180 150 270 180 270 180 150 105 150
Rectangle -13345367 true false 150 180 165 270
Rectangle -13345367 true false 120 165 135 270
Polygon -14835848 true true 120 75 105 90 105 105 120 105 120 165 180 165 180 105 195 105 195 90 180 75 165 75 165 75 150 75 150 75 120 75
Polygon -14835848 true true 135 75 120 90 120 105 135 105 135 165 120 165 120 105 105 105 105 90 120 75 135 75
Rectangle -1184463 true false 105 105 120 180
Rectangle -1184463 true false 180 105 195 180
Rectangle -1184463 true false 120 270 150 285
Rectangle -1184463 true false 150 270 180 285

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

bed
true
0
Rectangle -1 true false 135 75 165 105
Rectangle -1 false false 90 75 210 195
Rectangle -1 false false 90 75 135 105
Rectangle -1 false false 165 75 210 105
Line -8630108 false 90 120 210 120
Line -8630108 false 90 105 210 105
Rectangle -6459832 false false 90 195 210 225
Rectangle -6459832 false false 90 195 105 240
Rectangle -6459832 false false 195 195 210 240
Line -6459832 false 120 195 180 225
Line -6459832 false 120 225 180 195
Rectangle -6459832 false false 90 60 210 75
Rectangle -6459832 false false 90 45 105 60
Rectangle -6459832 false false 195 45 210 60
Rectangle -8630108 false false 90 105 210 195
Rectangle -8630108 true false 90 120 210 195
Rectangle -1 true false 90 105 210 120
Rectangle -1 true false 90 75 135 105
Rectangle -1 true false 165 75 210 105
Rectangle -6459832 true false 90 195 210 225
Rectangle -6459832 true false 90 195 105 240
Rectangle -6459832 true false 195 195 210 240
Rectangle -6459832 true false 90 45 105 75
Rectangle -6459832 true false 90 60 210 75
Rectangle -6459832 true false 195 45 210 60
Rectangle -11221820 false false 105 75 150 105
Rectangle -11221820 false false 150 75 195 105
Rectangle -8630108 false false 90 105 210 120

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bubble
false
0
Circle -1 true false 29 29 242
Polygon -1 true false 60 210 75 285 150 255 75 195

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

curtains
true
0
Polygon -2674135 true false 74 -2 70 41 62 71 48 107 26 132 4 146 -2 147 -1 -2 74 -4
Polygon -2674135 true false 226 -3 230 40 238 70 252 106 274 131 296 145 302 146 301 -3 226 -5
Polygon -2674135 true false 279 135 245 299 300 300 301 145
Polygon -2674135 true false 22 135 56 299 1 300 0 145
Polygon -1184463 true false 279 134 300 132 299 154 275 152 272 143 272 140 278 134
Polygon -1184463 true false 21 134 0 132 1 154 25 152 28 143 28 140 22 134

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

flowers
true
0
Line -10899396 false 149 260 84 128
Line -10899396 false 152 257 121 104
Line -10899396 false 152 261 178 105
Line -10899396 false 152 259 207 141
Circle -2674135 true false 68 113 36
Circle -2674135 true false 91 76 41
Circle -2674135 true false 111 126 48
Circle -2674135 true false 155 76 35
Circle -2674135 true false 164 118 50
Circle -2674135 true false 131 98 28
Circle -2674135 true false 190 84 22
Circle -2674135 true false 203 110 28
Line -10899396 false 149 249 165 114
Line -10899396 false 153 252 178 170
Line -10899396 false 192 114 195 101
Line -10899396 false 105 118 112 135
Circle -2064490 true false 88 108 27
Circle -2064490 true false 144 112 37
Circle -2064490 true false 129 71 21
Circle -2064490 true false 198 135 25
Circle -2064490 true false 180 89 24
Polygon -13840069 true false 109 178 101 178 97 180 94 184 93 189 93 192 106 193 110 190 111 187 112 182
Polygon -13840069 true false 210 110 218 110 222 108 225 104 226 99 226 96 213 95 209 98 208 101 207 106
Polygon -13840069 true false 91 111 83 111 79 109 76 105 75 100 75 97 88 96 92 99 93 102 94 107
Polygon -13840069 true false 190 178 198 178 202 180 205 184 206 189 206 192 193 193 189 190 188 187 187 182
Polygon -13840069 true false 153 80 161 80 165 78 168 74 169 69 169 66 156 65 152 68 151 71 150 76
Polygon -13840069 true false 165 157 173 157 177 159 180 163 181 168 181 171 168 172 164 169 163 166 162 161
Polygon -13840069 true false 108 152 100 152 96 154 93 158 92 163 92 166 105 167 109 164 110 161 111 156
Polygon -13840069 true false 139 170 147 170 151 172 154 176 155 181 155 184 142 185 138 182 137 179 136 174

flowers2
true
0
Line -10899396 false 149 260 84 128
Line -10899396 false 152 257 121 104
Line -10899396 false 152 261 178 105
Line -10899396 false 152 259 207 141
Circle -2674135 true false 68 113 36
Circle -1184463 true false 91 76 41
Circle -1184463 true false 111 126 48
Circle -1184463 true false 155 76 35
Circle -2674135 true false 164 118 50
Circle -2674135 true false 131 98 28
Circle -2674135 true false 190 84 22
Circle -1184463 true false 203 110 28
Line -10899396 false 149 249 165 114
Line -10899396 false 153 252 178 170
Line -10899396 false 192 114 195 101
Line -10899396 false 105 118 112 135
Circle -2064490 true false 88 108 27
Circle -2064490 true false 144 112 37
Circle -2064490 true false 129 71 21
Circle -2064490 true false 198 135 25
Circle -2064490 true false 180 89 24
Polygon -13840069 true false 109 178 101 178 97 180 94 184 93 189 93 192 106 193 110 190 111 187 112 182
Polygon -13840069 true false 210 110 218 110 222 108 225 104 226 99 226 96 213 95 209 98 208 101 207 106
Polygon -13840069 true false 91 111 83 111 79 109 76 105 75 100 75 97 88 96 92 99 93 102 94 107
Polygon -13840069 true false 190 178 198 178 202 180 205 184 206 189 206 192 193 193 189 190 188 187 187 182
Polygon -13840069 true false 153 80 161 80 165 78 168 74 169 69 169 66 156 65 152 68 151 71 150 76
Polygon -13840069 true false 165 157 173 157 177 159 180 163 181 168 181 171 168 172 164 169 163 166 162 161
Polygon -13840069 true false 108 152 100 152 96 154 93 158 92 163 92 166 105 167 109 164 110 161 111 156
Polygon -13840069 true false 139 170 147 170 151 172 154 176 155 181 155 184 142 185 138 182 137 179 136 174

flowers3
true
0
Line -10899396 false 149 260 84 128
Line -10899396 false 152 257 121 104
Line -10899396 false 152 261 178 105
Line -10899396 false 152 259 207 141
Circle -2674135 true false 68 113 36
Circle -955883 true false 91 76 41
Circle -1184463 true false 111 126 48
Circle -1184463 true false 155 76 35
Circle -2674135 true false 164 118 50
Circle -2674135 true false 131 98 28
Circle -2674135 true false 190 84 22
Circle -1184463 true false 203 110 28
Line -10899396 false 149 249 165 114
Line -10899396 false 153 252 178 170
Line -10899396 false 192 114 195 101
Line -10899396 false 105 118 112 135
Circle -2064490 true false 88 108 27
Circle -955883 true false 144 112 37
Circle -2064490 true false 129 71 21
Circle -2064490 true false 198 135 25
Circle -955883 true false 180 89 24
Polygon -13840069 true false 109 178 101 178 97 180 94 184 93 189 93 192 106 193 110 190 111 187 112 182
Polygon -13840069 true false 210 110 218 110 222 108 225 104 226 99 226 96 213 95 209 98 208 101 207 106
Polygon -13840069 true false 91 111 83 111 79 109 76 105 75 100 75 97 88 96 92 99 93 102 94 107
Polygon -13840069 true false 190 178 198 178 202 180 205 184 206 189 206 192 193 193 189 190 188 187 187 182
Polygon -13840069 true false 153 80 161 80 165 78 168 74 169 69 169 66 156 65 152 68 151 71 150 76
Polygon -13840069 true false 165 157 173 157 177 159 180 163 181 168 181 171 168 172 164 169 163 166 162 161
Polygon -13840069 true false 108 152 100 152 96 154 93 158 92 163 92 166 105 167 109 164 110 161 111 156
Polygon -13840069 true false 139 170 147 170 151 172 154 176 155 181 155 184 142 185 138 182 137 179 136 174

flowers4
true
0
Line -10899396 false 149 260 84 128
Line -10899396 false 152 257 121 104
Line -10899396 false 152 261 178 105
Line -10899396 false 152 259 207 141
Circle -6459832 true false 68 113 36
Circle -955883 true false 91 76 41
Circle -6459832 true false 111 126 48
Circle -6459832 true false 155 76 35
Circle -6459832 true false 164 118 50
Circle -6459832 true false 131 98 28
Circle -6459832 true false 190 84 22
Circle -6459832 true false 203 110 28
Line -10899396 false 149 249 165 114
Line -10899396 false 153 252 178 170
Line -10899396 false 192 114 195 101
Line -10899396 false 105 118 112 135
Circle -6459832 true false 88 108 27
Circle -955883 true false 144 112 37
Circle -2064490 true false 129 71 21
Circle -2064490 true false 198 135 25
Circle -955883 true false 180 89 24
Polygon -13840069 true false 109 178 101 178 97 180 94 184 93 189 93 192 106 193 110 190 111 187 112 182
Polygon -13840069 true false 210 110 218 110 222 108 225 104 226 99 226 96 213 95 209 98 208 101 207 106
Polygon -13840069 true false 91 111 83 111 79 109 76 105 75 100 75 97 88 96 92 99 93 102 94 107
Polygon -13840069 true false 190 178 198 178 202 180 205 184 206 189 206 192 193 193 189 190 188 187 187 182
Polygon -13840069 true false 153 80 161 80 165 78 168 74 169 69 169 66 156 65 152 68 151 71 150 76
Polygon -13840069 true false 165 157 173 157 177 159 180 163 181 168 181 171 168 172 164 169 163 166 162 161
Polygon -13840069 true false 108 152 100 152 96 154 93 158 92 163 92 166 105 167 109 164 110 161 111 156
Polygon -13840069 true false 139 170 147 170 151 172 154 176 155 181 155 184 142 185 138 182 137 179 136 174

flowers6
true
0
Line -10899396 false 149 260 84 128
Line -10899396 false 152 257 121 104
Line -10899396 false 152 261 178 105
Line -10899396 false 152 259 207 141
Circle -6459832 true false 68 113 36
Circle -6459832 true false 91 76 41
Circle -6459832 true false 111 126 48
Circle -6459832 true false 155 76 35
Circle -6459832 true false 164 118 50
Circle -6459832 true false 131 98 28
Circle -6459832 true false 190 84 22
Circle -6459832 true false 203 110 28
Line -10899396 false 149 249 165 114
Line -10899396 false 153 252 178 170
Line -10899396 false 192 114 195 101
Line -10899396 false 105 118 112 135
Circle -6459832 true false 88 108 27
Circle -6459832 true false 144 112 37
Circle -6459832 true false 129 71 21
Circle -6459832 true false 198 135 25
Circle -6459832 true false 180 89 24
Polygon -13840069 true false 109 178 101 178 97 180 94 184 93 189 93 192 106 193 110 190 111 187 112 182
Polygon -13840069 true false 210 110 218 110 222 108 225 104 226 99 226 96 213 95 209 98 208 101 207 106
Polygon -13840069 true false 91 111 83 111 79 109 76 105 75 100 75 97 88 96 92 99 93 102 94 107
Polygon -13840069 true false 190 178 198 178 202 180 205 184 206 189 206 192 193 193 189 190 188 187 187 182
Polygon -13840069 true false 153 80 161 80 165 78 168 74 169 69 169 66 156 65 152 68 151 71 150 76
Polygon -13840069 true false 165 157 173 157 177 159 180 163 181 168 181 171 168 172 164 169 163 166 162 161
Polygon -13840069 true false 108 152 100 152 96 154 93 158 92 163 92 166 105 167 109 164 110 161 111 156
Polygon -13840069 true false 139 170 147 170 151 172 154 176 155 181 155 184 142 185 138 182 137 179 136 174

flowers6.1
true
0
Line -10899396 false 149 260 84 128
Line -10899396 false 152 257 121 104
Line -10899396 false 152 261 178 105
Line -10899396 false 152 259 207 141
Circle -6459832 true false 53 158 36
Circle -6459832 true false 76 91 41
Circle -6459832 true false 111 156 48
Circle -6459832 true false 155 76 35
Circle -6459832 true false 179 148 50
Circle -6459832 true false 131 98 28
Circle -6459832 true false 205 99 22
Circle -6459832 true false 203 125 28
Line -10899396 false 149 249 165 114
Line -10899396 false 153 252 178 170
Line -10899396 false 192 114 195 101
Line -10899396 false 105 118 112 135
Circle -6459832 true false 88 123 27
Circle -6459832 true false 144 127 37
Circle -6459832 true false 129 71 21
Circle -6459832 true false 228 165 25
Circle -6459832 true false 180 104 24
Polygon -13840069 true false 109 178 101 178 97 180 94 184 93 189 93 192 106 193 110 190 111 187 112 182
Polygon -13840069 true false 210 110 218 110 222 108 225 104 226 99 226 96 213 95 209 98 208 101 207 106
Polygon -13840069 true false 91 111 83 111 79 109 76 105 75 100 75 97 88 96 92 99 93 102 94 107
Polygon -13840069 true false 190 178 198 178 202 180 205 184 206 189 206 192 193 193 189 190 188 187 187 182
Polygon -13840069 true false 153 80 161 80 165 78 168 74 169 69 169 66 156 65 152 68 151 71 150 76
Polygon -13840069 true false 165 157 173 157 177 159 180 163 181 168 181 171 168 172 164 169 163 166 162 161
Polygon -13840069 true false 108 152 100 152 96 154 93 158 92 163 92 166 105 167 109 164 110 161 111 156
Polygon -13840069 true false 139 170 147 170 151 172 154 176 155 181 155 184 142 185 138 182 137 179 136 174

flowers6.2
true
0
Line -10899396 false 149 260 84 128
Line -10899396 false 152 257 121 104
Line -10899396 false 152 261 178 105
Line -10899396 false 152 259 207 141
Circle -6459832 true false 53 188 36
Circle -6459832 true false 61 106 41
Circle -6459832 true false 111 201 48
Circle -6459832 true false 155 76 35
Circle -6459832 true false 179 208 50
Circle -6459832 true false 131 113 28
Circle -6459832 true false 205 114 22
Circle -6459832 true false 203 140 28
Line -10899396 false 149 249 165 114
Line -10899396 false 153 252 178 170
Line -10899396 false 192 114 195 101
Line -10899396 false 90 118 97 135
Circle -6459832 true false 88 153 27
Circle -6459832 true false 144 157 37
Circle -6459832 true false 129 86 21
Circle -6459832 true false 228 180 25
Circle -6459832 true false 180 119 24
Polygon -13840069 true false 109 193 101 193 97 195 94 199 93 204 93 207 106 208 110 205 111 202 112 197
Polygon -13840069 true false 225 125 233 125 237 123 240 119 241 114 241 111 228 110 224 113 223 116 222 121
Polygon -13840069 true false 76 126 68 126 64 124 61 120 60 115 60 112 73 111 77 114 78 117 79 122
Polygon -13840069 true false 205 193 213 193 217 195 220 199 221 204 221 207 208 208 204 205 203 202 202 197
Polygon -13840069 true false 153 95 161 95 165 93 168 89 169 84 169 81 156 80 152 83 151 86 150 91
Polygon -13840069 true false 180 202 188 202 192 204 195 208 196 213 196 216 183 217 179 214 178 211 177 206
Polygon -13840069 true false 93 152 85 152 81 154 78 158 77 163 77 166 90 167 94 164 95 161 96 156
Polygon -13840069 true false 139 200 147 200 151 202 154 206 155 211 155 214 142 215 138 212 137 209 136 204

flowers6.3
true
0
Line -10899396 false 149 260 84 128
Line -10899396 false 152 257 121 104
Line -10899396 false 152 261 178 105
Line -10899396 false 152 259 207 141
Circle -6459832 true false 23 233 36
Circle -6459832 true false 46 166 41
Circle -6459832 true false 96 261 48
Circle -6459832 true false 170 106 35
Circle -6459832 true false 179 283 50
Circle -6459832 true false 116 143 28
Circle -6459832 true false 220 129 22
Circle -6459832 true false 218 155 28
Line -10899396 false 149 249 165 114
Line -10899396 false 153 252 178 170
Line -10899396 false 192 114 195 101
Line -10899396 false 90 118 97 135
Circle -6459832 true false 58 228 27
Circle -6459832 true false 144 187 37
Circle -6459832 true false 114 101 21
Circle -6459832 true false 258 210 25
Circle -6459832 true false 165 149 24
Polygon -13840069 true false 109 208 101 208 97 210 94 214 93 219 93 222 106 223 110 220 111 217 112 212
Polygon -13840069 true false 240 140 248 140 252 138 255 134 256 129 256 126 243 125 239 128 238 131 237 136
Polygon -13840069 true false 76 141 68 141 64 139 61 135 60 130 60 127 73 126 77 129 78 132 79 137
Polygon -13840069 true false 235 208 243 208 247 210 250 214 251 219 251 222 238 223 234 220 233 217 232 212
Polygon -13840069 true false 168 110 176 110 180 108 183 104 184 99 184 96 171 95 167 98 166 101 165 106
Polygon -13840069 true false 195 247 203 247 207 249 210 253 211 258 211 261 198 262 194 259 193 256 192 251
Polygon -13840069 true false 108 152 100 152 96 154 93 158 92 163 92 166 105 167 109 164 110 161 111 156
Polygon -13840069 true false 139 260 147 260 151 262 154 266 155 271 155 274 142 275 138 272 137 269 136 264

flowers6.4
true
0
Line -10899396 false 149 260 84 128
Line -10899396 false 152 257 121 104
Line -10899396 false 152 261 178 105
Line -10899396 false 152 259 207 141
Circle -6459832 true false 31 196 41
Circle -6459832 true false 155 136 35
Circle -6459832 true false 146 233 28
Circle -6459832 true false 203 200 28
Line -10899396 false 149 249 165 114
Line -10899396 false 153 252 178 170
Line -10899396 false 192 114 195 101
Line -10899396 false 90 118 97 135
Circle -6459832 true false 28 273 27
Circle -6459832 true false 159 292 37
Circle -6459832 true false 273 210 25
Polygon -13840069 true false 109 238 101 238 97 240 94 244 93 249 93 252 106 253 110 250 111 247 112 242
Polygon -13840069 true false 235 208 243 208 247 210 250 214 251 219 251 222 238 223 234 220 233 217 232 212
Polygon -13840069 true false 93 182 85 182 81 184 78 188 77 193 77 196 90 197 94 194 95 191 96 186

heart
true
1
Circle -2674135 true true 23 53 134
Circle -2674135 true true 141 51 136
Polygon -2674135 true true 150 270 30 150 270 150 150 270

heartbreak
true
14
Circle -2674135 true false 15 60 120
Circle -2674135 true false 163 58 122
Polygon -2674135 true false 150 270 30 150 270 150 150 270
Polygon -2674135 true false 105 105 195 105 195 180 90 180 90 105
Polygon -16777216 true true 105 60 150 165 195 45 105 45 105 60

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

londontower
true
0
Rectangle -7500403 true true 0 210 300 300
Polygon -6459832 true false 105 300 105 120 195 120 195 300
Rectangle -6459832 true false 90 135 210 255
Polygon -7500403 true true 120 90 105 120 195 120 180 90 120 90
Rectangle -6459832 true false 120 75 180 90
Polygon -7500403 true true 120 75 150 0 180 75
Circle -1 true false 107 152 86
Line -16777216 false 195 195 150 195
Line -16777216 false 150 195 120 165
Circle -16777216 false false 106 150 88
Circle -16777216 false false 111 155 78
Rectangle -6459832 false false 105 148 195 238
Rectangle -16777216 true false 133 76 135 90
Rectangle -16777216 true false 148 76 150 90
Rectangle -16777216 true false 162 76 164 90
Rectangle -16777216 true false 116 120 118 134
Rectangle -16777216 true false 132 120 134 134
Rectangle -16777216 true false 147 120 149 134
Rectangle -16777216 true false 161 120 163 134
Rectangle -16777216 true false 175 119 177 133
Rectangle -16777216 false false 117 266 127 299
Rectangle -16777216 false false 131 266 141 299
Rectangle -16777216 false false 170 266 180 299
Rectangle -16777216 false false 157 266 167 299
Line -16777216 false 150 150 150 165
Line -16777216 false 105 195 120 195
Line -16777216 false 150 240 150 225
Line -16777216 false 195 195 180 195
Line -16777216 false 187 214 174 208
Line -16777216 false 169 233 165 221
Line -16777216 false 109 212 122 206
Line -16777216 false 127 232 134 218
Line -16777216 false 111 175 124 182
Line -16777216 false 127 158 135 172
Line -16777216 false 169 157 163 171
Line -16777216 false 186 173 172 180
Circle -16777216 false false 122 165 57
Rectangle -6459832 true false 45 270 75 300
Rectangle -6459832 true false 225 270 255 300
Rectangle -6459832 true false 270 270 300 300
Rectangle -6459832 true false 0 270 30 300
Rectangle -6459832 true false 5 241 25 282
Rectangle -6459832 true false 50 241 70 282
Rectangle -6459832 true false 230 240 250 281
Rectangle -6459832 true false 276 239 296 280
Polygon -6459832 true false 10 243 16 215 21 245
Polygon -6459832 true false 55 245 61 217 66 247
Polygon -6459832 true false 234 244 240 216 245 246
Polygon -6459832 true false 280 240 286 212 291 242
Polygon -7500403 true true 0 210 6 182 11 212
Polygon -7500403 true true 290 215 296 187 301 217
Rectangle -16777216 false false 7 280 12 300
Rectangle -16777216 false false 15 280 20 300
Rectangle -16777216 false false 53 280 58 300
Rectangle -16777216 false false 61 280 66 300
Rectangle -16777216 false false 232 280 237 300
Rectangle -16777216 false false 242 279 247 299
Rectangle -16777216 false false 277 281 282 301
Rectangle -16777216 false false 287 281 292 301
Rectangle -6459832 true false 120 59 123 75
Rectangle -6459832 true false 177 61 180 77
Rectangle -6459832 true false 105 106 108 121
Rectangle -6459832 true false 191 106 194 121
Rectangle -16777216 false false 105 150 195 240
Rectangle -16777216 false false 90 135 210 255

mandancer1
false
8
Circle -1184463 true false 129 39 42
Polygon -16777216 true false 120 150 120 270 165 270 150 180 150 180 135 270 180 270 180 150 105 150
Rectangle -16777216 true false 120 165 135 270
Polygon -16777216 true false 120 75 105 90 105 105 120 105 120 165 180 165 180 105 195 105 195 90 180 75 165 75 165 75 150 75 150 75 120 75
Polygon -16777216 true false 135 75 120 90 120 105 135 105 135 165 120 165 120 105 105 105 105 90 120 75 135 75
Rectangle -1184463 true false 120 270 135 285
Rectangle -1184463 true false 165 270 180 285
Polygon -6459832 true false 135 30 129 52 135 45 172 51 165 30 135 30
Polygon -1 true false 135 75 150 135 165 75
Polygon -2674135 true false 135 75 135 90 165 75 165 90 135 75
Polygon -16777216 true false 120 105 75 120 60 105 135 75
Polygon -16777216 true false 180 75 225 120 180 165 165 150 195 120 180 105
Polygon -1184463 true false 60 105 75 120 60 120 60 105

mandancer1.1
false
8
Circle -1184463 true false 123 60 42
Polygon -16777216 true false 120 150 120 270 165 270 150 180 150 180 135 270 180 270 180 150 105 150
Rectangle -16777216 true false 120 165 135 270
Polygon -16777216 true false 122 107 107 122 107 137 122 137 122 197 182 197 182 137 197 137 197 122 182 107 167 107 167 107 152 107 152 107 122 107
Polygon -16777216 true false 133 103 118 118 118 133 133 133 133 193 118 193 118 133 103 133 103 118 118 103 133 103
Rectangle -1184463 true false 120 270 135 285
Rectangle -1184463 true false 165 270 180 285
Polygon -6459832 true false 135 52 129 74 135 67 172 73 165 52 135 52
Polygon -1 true false 135 106 150 166 165 106
Polygon -2674135 true false 156 105 156 120 186 105 186 120 156 105
Polygon -16777216 true false 113 131 68 146 53 131 128 101
Polygon -16777216 true false 180 114 225 159 180 204 165 189 195 159 180 144
Polygon -1184463 true false 68 142 83 157 68 157 68 142

mandancer1.2
false
8
Circle -1184463 true false 123 90 42
Polygon -16777216 true false 120 165 120 285 180 285 150 195 150 195 135 285 195 285 180 165 105 165
Rectangle -16777216 true false 120 165 135 270
Polygon -16777216 true false 107 122 92 137 92 152 107 152 107 212 167 212 167 152 182 152 182 137 167 122 152 122 152 122 137 122 137 122 107 122
Polygon -16777216 true false 118 133 103 148 103 163 118 163 118 223 103 223 103 163 88 163 88 148 103 133 118 133
Rectangle -1184463 true false 120 270 135 285
Rectangle -1184463 true false 150 270 165 285
Polygon -6459832 true false 150 82 144 104 150 97 187 103 180 82 150 82
Polygon -1 true false 135 121 150 181 165 121
Polygon -2674135 true false 171 150 171 165 201 150 201 165 171 150
Polygon -16777216 true false 113 176 68 191 53 176 128 146
Polygon -16777216 true false 180 114 225 159 180 204 165 189 195 159 180 144
Polygon -1184463 true false 68 142 83 157 68 157 68 142

mandancer1.3
false
8
Circle -1184463 true false 138 120 42
Polygon -16777216 true false 120 165 120 285 180 285 150 195 150 195 135 285 195 285 180 165 105 165
Rectangle -16777216 true false 135 165 150 270
Polygon -16777216 true false 107 152 92 167 92 182 107 182 107 242 167 242 167 182 182 182 182 167 167 152 150 150 152 152 137 152 137 152 107 152
Polygon -16777216 true false 118 163 103 178 103 193 118 193 118 253 103 253 103 193 88 193 88 178 103 163 118 163
Rectangle -1184463 true false 120 270 135 285
Rectangle -1184463 true false 150 270 165 285
Polygon -6459832 true false 120 112 114 134 120 127 157 133 150 112 120 112
Polygon -1 true false 150 196 165 256 180 196
Polygon -2674135 true false 186 165 186 180 216 165 216 180 186 165
Polygon -16777216 true false 128 221 83 236 68 221 143 191
Polygon -16777216 true false 180 210 240 234 195 279 180 264 210 234 165 240
Polygon -1184463 true false 68 187 83 202 68 202 68 187

mandancer1.4
false
8
Circle -1184463 true false 168 165 42
Polygon -16777216 true false 120 180 120 300 180 270 150 210 150 210 135 285 195 285 180 180 105 180
Rectangle -16777216 true false 135 165 150 270
Polygon -16777216 true false 92 182 77 197 77 212 92 212 92 272 152 272 152 212 167 212 167 197 152 182 135 180 137 182 122 182 122 182 92 182
Polygon -16777216 true false 118 163 103 178 103 193 118 193 118 253 103 253 103 193 88 193 88 178 103 163 118 163
Rectangle -1184463 true false 75 270 90 285
Rectangle -1184463 true false 150 270 165 285
Polygon -6459832 true false 105 157 99 179 105 172 142 178 135 157 105 157
Polygon -1 true false 150 211 165 271 180 211
Polygon -2674135 true false 186 225 186 240 216 225 216 240 186 225
Polygon -16777216 true false 128 221 83 236 68 221 143 191
Polygon -16777216 true false 180 225 240 249 195 294 180 279 210 249 165 255
Polygon -1184463 true false 68 217 83 232 68 232 68 217

mandancer1.5
false
8
Circle -1184463 true false 168 165 42
Polygon -16777216 true false 120 180 120 300 180 270 150 210 150 210 135 285 195 285 180 180 105 180
Rectangle -16777216 true false 135 165 150 270
Polygon -16777216 true false 92 182 77 197 77 212 92 212 92 272 152 272 152 212 167 212 167 197 152 182 135 180 137 182 122 182 122 182 92 182
Polygon -16777216 true false 118 163 103 178 103 193 118 193 118 253 103 253 103 193 88 193 88 178 103 163 118 163
Rectangle -1184463 true false 75 270 90 285
Rectangle -1184463 true false 150 270 165 285
Polygon -1 true false 150 211 165 271 180 211
Polygon -2674135 true false 186 225 186 240 216 225 216 240 186 225
Polygon -16777216 true false 128 221 83 236 68 221 143 191
Polygon -16777216 true false 180 225 240 249 195 294 180 279 210 249 165 255
Circle -16777216 true false 89 177 118

mandancer1.6
false
8
Polygon -16777216 true false 120 180 120 300 180 270 150 210 150 210 135 285 195 285 180 180 105 180
Rectangle -16777216 true false 135 165 150 270
Rectangle -1184463 true false 150 270 165 285
Polygon -1 true false 150 211 165 271 180 211
Polygon -16777216 true false 128 221 83 236 68 221 143 191
Circle -16777216 true false 89 177 118
Circle -16777216 true false 56 221 67
Circle -16777216 true false 180 240 60

mandancer2
false
8
Circle -1184463 true false 144 39 42
Polygon -16777216 true false 150 150 135 270 180 270 180 180 180 180 150 270 195 270 195 150 120 150
Polygon -16777216 true false 135 75 120 90 120 105 135 105 150 165 195 165 195 105 210 105 210 90 195 75 165 75 165 75 165 75 165 75 135 75
Polygon -16777216 true false 150 75 135 90 135 105 150 105 150 165 135 165 135 105 120 105 120 90 135 75 150 75
Rectangle -1184463 true false 135 270 150 285
Rectangle -1184463 true false 180 270 195 285
Polygon -6459832 true false 150 30 146 54 157 45 184 51 180 30 150 30
Polygon -1 true false 165 75 180 135 180 75
Polygon -2674135 true false 165 75 165 90 180 75 180 90 165 75
Polygon -16777216 true false 150 90 120 120 105 105 135 75
Polygon -16777216 true false 195 75 225 105 180 150 165 135 195 105 180 90
Polygon -1184463 true false 105 105 120 120 105 120 105 105

mandancer3
false
8
Polygon -16777216 true false 150 150 150 270 150 270 150 180 150 180 150 270 180 270 180 150 105 150
Polygon -16777216 true false 150 105 135 105 135 105 150 120 150 165 180 165 195 135 180 90 195 135 180 75 165 75 165 75 150 75 150 75 150 105
Polygon -16777216 true false 150 75 135 90 135 105 150 105 150 165 150 165 135 105 150 135 135 105 150 105 150 75
Rectangle -1184463 true false 150 270 165 285
Rectangle -1184463 true false 165 270 180 285
Polygon -1 true false 165 75 180 135 180 75
Polygon -2674135 true false 165 75 165 90 180 75 180 75 165 75
Polygon -1184463 true false 135 105 135 120 150 120 150 105
Circle -1184463 true false 144 39 42
Polygon -6459832 true false 150 30 142 62 158 48 184 45 180 30 150 30
Rectangle -1184463 true false 180 135 195 150

mandancer4
false
8
Circle -1184463 true false 129 39 42
Polygon -16777216 true false 120 150 120 270 165 270 150 180 150 180 135 270 180 270 180 150 105 150
Rectangle -16777216 true false 120 165 135 270
Polygon -16777216 true false 120 75 105 90 105 105 120 105 120 165 180 165 180 105 195 105 195 90 180 75 165 75 165 75 150 75 150 75 120 75
Polygon -16777216 true false 135 75 120 90 120 105 135 105 135 165 120 165 120 105 105 105 105 90 120 75 135 75
Rectangle -1184463 true false 120 270 135 285
Rectangle -1184463 true false 165 270 180 285
Polygon -6459832 true false 135 30 124 57 136 47 168 49 165 30 135 30
Polygon -1 true false 135 75 150 135 165 75
Polygon -2674135 true false 135 75 135 90 165 75 165 90 135 75
Polygon -16777216 true false 180 105 225 120 240 105 165 75
Polygon -16777216 true false 120 75 75 120 120 165 135 150 105 120 120 105
Polygon -1184463 true false 240 105 225 120 240 120 240 105

mandancer5
false
8
Circle -1184463 true false 129 39 42
Polygon -16777216 true false 165 150 180 270 135 270 135 180 135 180 165 270 120 270 120 150 195 150
Polygon -16777216 true false 180 75 195 90 195 105 180 105 165 165 120 165 120 105 105 105 105 90 120 75 150 75 150 75 150 75 150 75 180 75
Polygon -16777216 true false 150 75 165 90 165 105 150 105 150 165 165 165 165 105 180 105 180 90 165 75 150 75
Rectangle -1184463 true false 120 270 135 285
Rectangle -1184463 true false 165 270 180 285
Polygon -6459832 true false 135 30 126 53 142 44 165 45 165 30 135 30
Polygon -1 true false 150 75 135 135 135 75
Polygon -2674135 true false 150 75 150 90 135 75 135 90 150 75
Polygon -16777216 true false 165 90 195 120 210 105 180 75
Polygon -16777216 true false 120 75 90 105 135 150 150 135 120 105 135 90
Polygon -1184463 true false 210 105 195 120 210 120 210 105

mandancer6
false
8
Polygon -16777216 true false 150 150 150 270 150 270 150 180 150 180 150 270 120 270 120 150 195 150
Polygon -16777216 true false 150 105 165 105 165 105 150 120 150 165 120 165 105 135 120 90 105 135 120 75 135 75 135 75 150 75 150 75 150 105
Polygon -16777216 true false 150 75 135 90 135 105 150 105 150 165 150 165 135 105 150 135 135 105 150 105 150 75
Rectangle -1184463 true false 135 270 150 285
Rectangle -1184463 true false 120 270 135 285
Polygon -1 true false 135 75 120 135 120 75
Polygon -2674135 true false 135 75 135 90 120 75 120 75 135 75
Polygon -1184463 true false 165 90 165 105 150 105 150 90
Circle -1184463 true false 114 39 42
Polygon -6459832 true false 150 30 156 55 142 51 111 45 120 30 150 30
Rectangle -1184463 true false 105 135 120 150

music1
true
0
Rectangle -7500403 true true 60 60 75 165
Circle -7500403 true true 15 135 60
Circle -7500403 true true 105 195 60
Circle -7500403 true true 195 165 60
Rectangle -7500403 true true 150 105 165 225
Rectangle -7500403 true true 240 75 255 195
Polygon -7500403 true true 150 105 255 60 255 75 150 120 150 105

music2
true
0
Rectangle -7500403 true true 195 105 210 225
Circle -7500403 true true 150 195 60
Circle -7500403 true true 60 45 60
Rectangle -7500403 true true 60 75 75 195
Polygon -7500403 true true 210 105 255 165 240 225 225 210 240 165 195 105 210 105

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

radio
true
0
Rectangle -2674135 true false 45 90 255 210
Circle -11221820 true false 57 132 66
Circle -11221820 true false 177 132 66
Polygon -13840069 true false 75 90 75 60 225 60 225 90 210 90 210 75 90 75 90 90 75 90
Rectangle -1184463 true false 60 105 75 120
Rectangle -1184463 true false 90 105 105 120
Rectangle -1184463 true false 165 105 180 120
Rectangle -1184463 true false 225 105 240 120

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

womandancer1
true
0
Polygon -2674135 true false 135 135 75 225 90 240 135 270 180 270 210 255 240 225 195 180 165 135 135 135
Circle -1184463 false false 129 39 42
Polygon -2674135 false false 135 90 120 105 120 120 135 120 135 135 165 135 165 120 180 120 180 105 165 90 135 90
Polygon -2064490 false false 135 135 120 165 105 180 90 195 60 225 90 240 105 255 150 270 195 255 240 240 225 210 195 180 180 165 165 135
Polygon -1184463 false false 120 105 105 120 60 105 60 120 105 135 120 120
Polygon -2064490 false false 90 240 135 165 150 135 120 255 150 270 150 150 150 135 165 150 180 195 210 255 150 270
Polygon -2064490 false false 150 135 75 240 135 270 180 270 240 240 150 135
Polygon -1184463 false false 180 105 195 135 180 150 195 135 180 105
Polygon -1184463 false false 135 75 150 90 165 75 150 90 135 75
Polygon -6459832 false false 150 45 120 60 120 105 120 60 135 90 120 60 120 60 120 45 150 45 150 45 150 30 120 45 120 60 150 90 120 75 135 90 120 90 135 105 135 120 135 90 120 90 150 30 120 60 135 120 135 45
Circle -1184463 true false 129 39 42
Polygon -2674135 true false 165 90 135 90 120 105 120 120 135 120 135 135 165 135 165 120 180 120 180 105 165 90
Polygon -6459832 true false 150 30 120 45 120 105 135 120 135 60 150 45 150 30
Polygon -1184463 true false 120 105 105 120 60 105 60 120 105 135 120 120
Polygon -1184463 true false 180 105 180 120 180 135 165 150 180 150 195 135 180 105

womandancer2
true
0
Polygon -2674135 true false 150 135 135 180 90 225 135 255 195 270 225 255 240 225 180 135 150 135
Circle -1184463 true false 144 39 42
Polygon -2674135 false false 150 90 135 105 135 120 150 120 150 135 180 135 180 120 195 120 195 105 180 90 150 90
Polygon -2064490 false false 150 135 135 165 120 180 105 195 75 225 105 240 120 255 165 270 210 255 255 240 240 210 210 180 195 165 180 135
Polygon -1184463 false false 135 105 150 105 105 105 105 120 135 120 135 120
Polygon -2064490 false false 105 240 150 165 165 135 135 255 165 270 165 150 165 135 180 150 195 195 225 255 165 270
Polygon -2064490 false false 165 135 90 240 150 270 195 270 255 240 165 135
Polygon -1184463 false false 180 105 195 135 180 150 195 135 180 105
Polygon -1184463 false false 135 75 150 90 165 75 150 90 135 75
Line -1184463 false 165 75 180 90
Polygon -6459832 true false 165 30 135 45 135 60 135 105 150 135 165 105 165 90 180 75 180 45 165 30 150 30 135 45
Polygon -2674135 true false 180 90 195 105 195 120 180 120 180 135 150 135 150 120 135 120 135 105 150 90
Polygon -1184463 true false 105 105 135 105 135 120 105 120 105 105

womandancer3
true
0
Polygon -2674135 true false 150 135 135 165 90 225 120 240 150 255 195 255 255 255 225 225 210 180 180 135
Polygon -2064490 false false 150 135 135 165 120 180 105 195 75 225 105 240 120 255 165 270 210 255 255 240 240 210 210 180 195 165 180 135
Polygon -2064490 false false 105 240 150 165 165 135 135 255 165 270 165 150 165 135 180 150 195 195 225 255 165 270
Polygon -2064490 false false 165 135 90 240 150 270 195 270 255 240 165 135
Polygon -1184463 false false 180 105 195 135 180 150 195 135 180 105
Polygon -1184463 false false 135 75 150 90 165 75 150 90 135 75
Line -1184463 false 165 75 180 90
Polygon -2674135 true false 150 90 180 90 180 135 150 135 150 105 135 105
Circle -1184463 true false 129 39 42
Polygon -6459832 true false 150 30 165 30 180 45 180 90 165 105 150 90 135 45
Rectangle -1184463 true false 135 105 150 120

womandancer4
true
0
Polygon -2674135 true false 135 135 90 210 60 240 105 255 150 270 195 255 225 225 195 180 165 135
Circle -1184463 false false 129 39 42
Polygon -2674135 false false 165 90 180 105 180 120 165 120 165 135 135 135 135 120 120 120 120 105 135 90 165 90
Polygon -2064490 false false 165 135 180 165 195 180 210 195 240 225 210 240 195 255 150 270 105 255 60 240 75 210 105 180 120 165 135 135
Polygon -1184463 false false 180 105 195 120 240 105 240 120 195 135 180 120
Polygon -2064490 false false 210 240 165 165 150 135 180 255 150 270 150 150 150 135 135 150 120 195 90 255 150 270
Polygon -2064490 false false 150 135 225 240 165 270 120 270 60 240 150 135
Polygon -1184463 false false 120 105 105 135 120 150 105 135 120 105
Polygon -1184463 false false 165 75 150 90 135 75 150 90 165 75
Circle -1184463 true false 129 39 42
Polygon -1184463 true false 180 105 195 120 240 105 240 120 195 135 180 120
Polygon -2674135 true false 135 90 165 90 180 105 180 120 165 120 165 135 135 135 135 120 120 120 120 105 135 90
Polygon -6459832 true false 135 30 165 30 180 45 180 90 165 120 135 90 120 60 135 30

womandancer5
true
0
Polygon -2674135 true false 120 135 105 195 45 240 75 255 150 270 195 240 210 210 150 150 150 135
Polygon -2064490 false false 150 135 165 165 180 180 195 195 225 225 195 240 180 255 135 270 90 255 45 240 60 210 90 180 105 165 120 135
Polygon -2064490 false false 195 240 150 165 135 135 165 255 135 270 135 150 135 135 120 150 105 195 75 255 135 270
Polygon -2064490 false false 135 135 210 240 150 270 105 270 45 240 135 135
Polygon -1184463 false false 120 105 105 135 120 150 105 135 120 105
Polygon -1184463 false false 165 75 150 90 135 75 150 90 165 75
Line -1184463 false 135 75 120 90
Polygon -2674135 false false 150 90 165 105 165 120 150 120 150 135 120 135 120 120 105 120 105 105 120 90 150 90
Polygon -1184463 false false 165 105 180 120 195 120 195 135 180 135 165 120
Line -6459832 false 135 30 120 60
Line -6459832 false 120 45 150 75
Line -6459832 false 150 45 135 75
Polygon -2674135 true false 120 90 105 105 105 120 120 120 120 135 150 135 150 120 165 120 165 105 150 90 120 90
Polygon -1184463 true false 165 105 180 120 195 120 195 135 180 135 165 120
Polygon -6459832 true false 165 45 150 30 120 45 120 105 150 90
Circle -1184463 true false 129 39 42
Polygon -6459832 true false 150 45 135 75 120 60 150 30 165 45 150 45

womandancer6
true
0
Polygon -2674135 true false 122 136 101 188 60 226 46 232 82 256 148 274 190 249 214 228 180 186 161 167 150 134
Polygon -2064490 false false 150 135 165 165 180 180 195 195 225 225 195 240 180 255 135 270 90 255 45 240 60 210 90 180 105 165 120 135
Polygon -2064490 false false 195 240 150 165 135 135 165 255 135 270 135 150 135 135 120 150 105 195 75 255 135 270
Polygon -2064490 false false 135 135 210 240 150 270 105 270 45 240 135 135
Polygon -1184463 false false 120 105 105 135 120 150 105 135 120 105
Polygon -1184463 false false 165 75 150 90 135 75 150 90 165 75
Line -1184463 false 135 75 120 90
Polygon -2674135 false false 150 90 150 105 150 120 150 120 150 135 120 135 120 120 105 120 105 105 120 90 150 90
Polygon -1184463 false false 135 105 150 120 165 120 165 135 150 135 135 120
Polygon -2674135 true false 120 90 105 105 105 120 120 120 120 135 150 135 150 90 120 90
Polygon -1184463 true false 165 120 165 135 150 135 135 120 135 105 150 120 165 120
Circle -1184463 true false 124 47 42
Polygon -6459832 true false 140 34 160 47 135 68 145 92 130 122 115 92 115 62 121 48 145 32

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

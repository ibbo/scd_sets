\version "2.22.0"

#(define (lower-extension pitch chbass)
    "Return re-sized markup for pitch note name."
    #{
        \markup \fontsize #-2
        #(note-name->markup pitch chbass)
    #}
)

\include "english.ly"


\paper {
   top-margin = 5\mm
   bottom-margin = 5\mm
   left-margin = 5\mm
   right-margin = 5\mm
   ragged-bottom = ##f
%   page-limit-inter-system-space=##t
%   page-limit-inter-system-space-factor=1
%   after-title-space = 10\mm
   score-markup-spacing = #'((basic-dstance . 10))
   markup-system-spacing = #'((basic-dstance . 5))
   system-system-spacing= #'((basic-dstance . 12))
%   markup-markup-spacing = #'((basic-dstance . 0))
}

\layout {
  indent = 0 \mm
  \context { 
        \ChordNames
        chordNoteNamer = #lower-extension
        \override ChordName.font-size = #0.5
  }
}

PartPOneVoiceOne =  \relative b' {
    \clef "treble" \time 6/8 \key g \major | % 1
    \partial 8  b8 \repeat volta 2 {
        | % 2
         e,4  fs8  g4  a8 | % 3
         b4  c8  d4  b8 | % 4
         g4  g8  d'4  b8 | % 5
         a8 [  fs8  a8 ]  d,4  fs8 | % 6
         e4  fs8  g4  a8 | % 7
         b8 [  c8  b8 ]  g'4 fs8 | % 8
         e8 [  d8  c8 ]  b8 [
         cs8  ds8 ] | % 9
         e4.  e4  b8 }
    \break \repeat volta 2 {
        | \barNumberCheck #10
         e4  fs8  g4  e8 | % 11
         d4  b8  d4  b8 | % 12
         g8 [  a8  g8 ]  d'4  b8
        | % 13
         a8 [  fs8  a8 ]  d,8 [  g8
         fs8 ] \break | % 14
         e8 [  fs8  e8 ]  g4  a8 | % 15
         b8 [  c8  b8 ]  g'4
         fs8 | % 16
         e8 [  d8  c8 ]  b8 [
         cs8  ds8 ] | % 17
         e4.  e4 }
    s8 \break | % 18
    \key d \major  a,8 s8*5 | % 19
     d4  d8  d8 [  cs8  d8
    ] | \barNumberCheck #20
     b4  d8  b4  a8 | % 21
     fs'4  fs8  fs8 [  e8
     fs8 ] | % 22
     g4. -\f  b,4. \break | % 23
     cs4  cs8  cs8 [  b8
     cs8 ] | % 24
     e4  cs8  b4  a8 | % 25
     fs8 [  a8  a8 ]  e8 [  g8
     g8 ] | % 26
     fs4.  fs4  a8 \break | % 27
     d4  d8  d8 [  cs8  d8
    ] | % 28
     b4  d8  b4  a8 | % 29
     fs'4  fs8  fs8 [  e8
     fs8 ] | \barNumberCheck #30
     g4.  b,4. \break | % 31
     cs4  cs8  cs8 [  b8
     cs8 ] | % 32
     e4  cs8  b4  a8 | % 33
     fs8 [  a8  a8 ]  g8 [  cs,8
     cs8 ] | % 34
     d4.  d4  a'8 \break | % 35
     d8 [  a8  d8 ]  fs8 [
     d8  fs8 ] | % 36
     a4  fs8  d4  a8 | % 37
     a'4  a8  a8 [  g8  e8
    ] | % 38
     b4.  b4  c8 \break | % 39
     cs4  cs8  cs8 [  b8
     cs8 ] | \barNumberCheck #40
     e4  cs8  b4  a8 | % 41
     fs8 [  a8  a8 ]  e8 [  g8
     g8 ] | % 42
     fs4.  fs4  a8 \break | % 43
     d8 [  a8  d8 ]  fs8 [
     d8  fs8 ] | % 44
     a4  fs8  d4  a8 | % 45
     a'4  a8  a8 [  g8  e8
    ] | % 46
     b4.  b4  c8 \break | % 47
     cs4  cs8  cs8 [  b8
     cs8 ] | % 48
     e4  cs8  b4  a8 | % 49
     fs8 [  a8  a8 ]  g8 [  cs,8
     cs8 ] | \barNumberCheck #50
     d4.  d4. | % 51
    \key g \major  d8 s8*5 \repeat volta 2 {
        | % 52
         b'4  b8  b4  d,8 | % 53
         b'4  b8  b4  d8 | % 54
         g8 [  fs8  e8 ]  d8 [
         c8  b8 ] | % 55
         d4  c8  a4  b8 \break | % 56
         c4  c8  c4 -\f  d,8 | % 57
         c'4  c8  c4 -\f  e8 | % 58
         e8 [  d8  b8 ]  d8 [
         c8  a8 ] | % 59
         g4.  g4  d'8 }
    \break \repeat volta 2 {
        | \barNumberCheck #60
         g4  g8  g4  d8 | % 61
         b4  b8  b4. -\f | % 62
         b4.  d8 [  c8  b8 ] | % 63
         d4  c8  a4  c8 \break | % 64
         fs4  fs8  fs4  e8 | % 65
         c4  c8  c4  e8 | % 66
         e8 [  d8  b8 ]  d8 [
         c8  a8 ] | % 67
         g4.  g4. }
    \break | % 68
    \key a \major  fs8 s8*5 \repeat volta 2 {
        | % 69
         e4  e8  e8 [  cs8  e8 ] |
        \barNumberCheck #70
         fs4  e8  e4  a8 | % 71
         cs4  cs8  e4  cs8 | % 72
         b4  a8  fs8 [  gis8  a8 ]
        \break | % 73
         e4  e8  e8 [  cs8  e8 ] | % 74
         fs4  e8  e4  a8 | % 75
         cs8 [  cs8  cs8 ]  e4
         cs8 | % 76
         b4.  a4  d8 }
    \break \repeat volta 2 {
        | % 77
         cs4  b8 --  e4  cs8 | % 78
         b4  a8  fs4  d'8 | % 79
         cs4  b8  e4  cs8 |
        \barNumberCheck #80
         b4  a8  fs8 [  gis8  a8 ]
        \break | % 81
         e4  e8  e8 [  cs8  e8 ] | % 82
         fs4  e8  e4  a8 | % 83
         cs4  cs8  e4  cs8 | % 84
         b4.  a4. }
    }

PartPOneVoiceOneChords =  \chordmode {
    | % 1
    \partial 8 b8:7 \repeat volta 2 {
        | % 2
        e4:m s8 s4 s8 | % 3
        e4:m s8 d4:7 s8 | % 4
        g4 s8 s4 s8 | % 5
        d8 s8 s8 b4:m s8 | % 6
        e4:1 s8 s4 s8 | % 7
        e8:1 s8 s8 s4 s8 | % 8
        a8:1 s8 s8 b8:1 s8 s8 | % 9
        e4.:1 e4:1 b8:1 }
    \repeat volta 2 {
        | \barNumberCheck #10
        e4:1 s8 c4:1 s8 | % 11
        a4:1 s8 d4:1 s8 | % 12
        g8:1 s8 s8 s4 s8 | % 13
        a8:1 s8 s8 d8:1 s8 s8 | % 14
        e8:1 s8 s8 s4 s8 | % 15
        e8:1 s8 s8 s4 s8 | % 16
        c8:1 s8 s8 b8:1 s8 s8 | % 17
        e4.:1 s4 }
    s8 | % 18
    s2. | % 19
    d4:1 s8 f8:1 s8 s8 | \barNumberCheck #20
    g4:1 s8 a4:1 s8 | % 21
    d4:1 s8 b8:1 s8 s8 | % 22
    e4.:1 s4. | % 23
    s4 s8 b8:1 s8 s8 | % 24
    c4:1 s8 a4:1 s8 | % 25
    e8:1 s8 s8 a8:1 s8 s8 | % 26
    a4.:1 s4 s8 | % 27
    d4:1 s8 f8:1 s8 s8 | % 28
    g4:1 s8 a4:1 s8 | % 29
    d4:1 s8 b8:1 s8 s8 | \barNumberCheck #30
    e4.:1 | % 31
    s4 s8 b8:1 s8 s8 | % 32
    c4:1 s8 a4:1 s8 | % 33
    e8:1 s8 s8 a8:1 s8 s8 | % 34
    d4.:1 s4 a8:1 | % 35
    d8:1 s8 s8 c8:1 s8 s8 | % 36
    b4:1 s8 a4:1 s8 | % 37
    d4:1 s8 d8:1 s8 s8 | % 38
    e4.:1 s4 s8 | % 39
    s4 s8 s8 s8 s8 | \barNumberCheck #40
    s4 s8 s4 s8 | % 41
    e8:1 s8 s8 a8:1 s8 s8 | % 42
    d4.:1 a4:1 s8 | % 43
    d8:1 s8 s8 c8:1 s8 s8 | % 44
    b4:1 s8 a4:1 s8 | % 45
    d4:1 s8 b8:1 s8 s8 | % 46
    e4.:1 s4 s8 | % 47
    g4:1 s8 s8 s8 s8 | % 48
    a4:1 s8 s4 s8 | % 49
    e8:1 s8 s8 a8:1 s8 s8 | \barNumberCheck #50
    d4.:1 d4.:1 | % 51
    s2. \repeat volta 2 {
        | % 52
        c4:1 s8 s4 s8 | % 53
        g4:1 s8 s4 s8 | % 54
        g8:1 s8 s8 g8:1 s8 s8 | % 55
        a4:1 s8 s4 s8 | % 56
        d4:1 s8 s4 s8 | % 57
        d4:1 s8 s4 s8 | % 58
        a8:1 s8 s8 d8:1 s8 s8 | % 59
        g4.:1 g4:1 d8:1 }
    \repeat volta 2 {
        | \barNumberCheck #60
        g4:1 s8 f4:1 s8 | % 61
        g4:1 s8 d4.:1 | % 62
        g4.:1 e8:1 s8 s8 | % 63
        a4:1 s8 s4 s8 | % 64
        d4:1 s8 s4 s8 | % 65
        d4:1 s8 s4 s8 | % 66
        a8:1 s8 s8 d8:1 s8 s8 | % 67
        g4.:1 s4. }
    | % 68
    s2. \repeat volta 2 {
        | % 69
        c4:1 s8 c8:1 s8 s8 | \barNumberCheck #70
        d4:1 s8 c4:1 s8 | % 71
        a4:1 s8 f4:1 s8 | % 72
        b4:1 s8 e8:1 s8 s8 | % 73
        a4:1 s8 c8:1 s8 s8 | % 74
        d4:1 s8 c4:1 c8:1 | % 75
        b8:1 s8 s8 s4 s8 | % 76
        e4.:1 a4:1 s8 }
    \repeat volta 2 {
        | % 77
        s4 s8 f4:1 s8 | % 78
        b4:1 s8 e4:1 s8 | % 79
        a4:1 s8 c4:1 s8 | \barNumberCheck #80
        d4:1 s8 d8:1 s8 s8 | % 81
        a4:1 s8 c8:1 s8 s8 | % 82
        d4:1 s8 c4:1 s8 | % 83
        b4:1 s8 s4 s8 | % 84
        e4.:1 a4.:1 }
    }


% The score definition
\score {
    <<
        
        \context ChordNames = "PartPOneVoiceOneChords" { \PartPOneVoiceOneChords}
        \new Staff
        <<
            \set Staff.instrumentName = "Track 1"
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    }


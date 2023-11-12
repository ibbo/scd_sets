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
    \partial 8 \stemDown b8 \repeat volta 2 {
        | % 2
        \stemUp e,4 \stemUp fs8 \stemUp g4 \stemUp a8 | % 3
        \stemDown b4 \stemDown c8 \stemDown d4 \stemDown b8 | % 4
        \stemUp g4 \stemUp g8 \stemDown d'4 \stemDown b8 | % 5
        \stemUp a8 [ \stemUp fs8 \stemUp a8 ] \stemUp d,4 \stemUp fs8
        \break | % 6
        \stemUp e4 \stemUp fs8 \stemUp g4 \stemUp a8 | % 7
        \stemDown b8 [ \stemDown c8 \stemDown b8 ] \stemDown g'4
        \stemDown fs8 | % 8
        \stemDown e8 [ \stemDown d8 \stemDown c8 ] \stemDown b8 [
        \stemDown cs8 \stemDown ds8 ] | % 9
        \stemDown e4. \stemDown e4 \stemDown b8 }
    \break \repeat volta 2 {
        | \barNumberCheck #10
        \stemDown e4 \stemDown fs8 \stemDown g4 \stemDown e8 | % 11
        \stemDown d4 \stemDown b8 \stemDown d4 \stemDown b8 | % 12
        \stemUp g8 [ \stemUp a8 \stemUp g8 ] \stemDown d'4 \stemDown b8
        | % 13
        \stemUp a8 [ \stemUp fs8 \stemUp a8 ] \stemUp d,8 [ \stemUp g8
        \stemUp fs8 ] \break | % 14
        \stemUp e8 [ \stemUp fs8 \stemUp e8 ] \stemUp g4 \stemUp a8 | % 15
        \stemDown b8 [ \stemDown c8 \stemDown b8 ] \stemDown g'4
        \stemDown fs8 | % 16
        \stemDown e8 [ \stemDown d8 \stemDown c8 ] \stemDown b8 [
        \stemDown cs8 \stemDown ds8 ] | % 17
        \stemDown e4. \stemDown e4 }
    s8 \break | % 18
    \key d \major \stemUp a,8 s8*5 | % 19
    \stemDown d4 \stemDown d8 \stemDown d8 [ \stemDown cs8 \stemDown d8
    ] | \barNumberCheck #20
    \stemDown b4 \stemDown d8 \stemDown b4 \stemUp a8 | % 21
    \stemDown fs'4 \stemDown fs8 \stemDown fs8 [ \stemDown e8
    \stemDown fs8 ] | % 22
    \stemDown g4. -\f \stemDown b,4. \break | % 23
    \stemDown cs4 \stemDown cs8 \stemDown cs8 [ \stemDown b8
    \stemDown cs8 ] | % 24
    \stemDown e4 \stemDown cs8 \stemDown b4 \stemUp a8 | % 25
    \stemUp fs8 [ \stemUp a8 \stemUp a8 ] \stemUp e8 [ \stemUp g8
    \stemUp g8 ] | % 26
    \stemUp fs4. \stemUp fs4 \stemUp a8 \break | % 27
    \stemDown d4 \stemDown d8 \stemDown d8 [ \stemDown cs8 \stemDown d8
    ] | % 28
    \stemDown b4 \stemDown d8 \stemDown b4 \stemUp a8 | % 29
    \stemDown fs'4 \stemDown fs8 \stemDown fs8 [ \stemDown e8
    \stemDown fs8 ] | \barNumberCheck #30
    \stemDown g4. \stemDown b,4. \break | % 31
    \stemDown cs4 \stemDown cs8 \stemDown cs8 [ \stemDown b8
    \stemDown cs8 ] | % 32
    \stemDown e4 \stemDown cs8 \stemDown b4 \stemUp a8 | % 33
    \stemUp fs8 [ \stemUp a8 \stemUp a8 ] \stemUp g8 [ \stemUp cs,8
    \stemUp cs8 ] | % 34
    \stemUp d4. \stemUp d4 \stemUp a'8 \break | % 35
    \stemDown d8 [ \stemDown a8 \stemDown d8 ] \stemDown fs8 [
    \stemDown d8 \stemDown fs8 ] | % 36
    \stemDown a4 \stemDown fs8 \stemDown d4 \stemUp a8 | % 37
    \stemDown a'4 \stemDown a8 \stemDown a8 [ \stemDown g8 \stemDown e8
    ] | % 38
    \stemDown b4. \stemDown b4 \stemDown c8 \break | % 39
    \stemDown cs4 \stemDown cs8 \stemDown cs8 [ \stemDown b8
    \stemDown cs8 ] | \barNumberCheck #40
    \stemDown e4 \stemDown cs8 \stemDown b4 \stemUp a8 | % 41
    \stemUp fs8 [ \stemUp a8 \stemUp a8 ] \stemUp e8 [ \stemUp g8
    \stemUp g8 ] | % 42
    \stemUp fs4. \stemUp fs4 \stemUp a8 \break | % 43
    \stemDown d8 [ \stemDown a8 \stemDown d8 ] \stemDown fs8 [
    \stemDown d8 \stemDown fs8 ] | % 44
    \stemDown a4 \stemDown fs8 \stemDown d4 \stemUp a8 | % 45
    \stemDown a'4 \stemDown a8 \stemDown a8 [ \stemDown g8 \stemDown e8
    ] | % 46
    \stemDown b4. \stemDown b4 \stemDown c8 \break | % 47
    \stemDown cs4 \stemDown cs8 \stemDown cs8 [ \stemDown b8
    \stemDown cs8 ] | % 48
    \stemDown e4 \stemDown cs8 \stemDown b4 \stemUp a8 | % 49
    \stemUp fs8 [ \stemUp a8 \stemUp a8 ] \stemUp g8 [ \stemUp cs,8
    \stemUp cs8 ] | \barNumberCheck #50
    \stemUp d4. \stemUp d4. | % 51
    \key g \major \stemUp d8 s8*5 \repeat volta 2 {
        | % 52
        \stemDown b'4 \stemDown b8 \stemDown b4 \stemUp d,8 | % 53
        \stemDown b'4 \stemDown b8 \stemDown b4 \stemDown d8 | % 54
        \stemDown g8 [ \stemDown fs8 \stemDown e8 ] \stemDown d8 [
        \stemDown c8 \stemDown b8 ] | % 55
        \stemDown d4 \stemDown c8 \stemUp a4 \stemDown b8 \break | % 56
        \stemDown c4 \stemDown c8 \stemDown c4 -\f \stemUp d,8 | % 57
        \stemDown c'4 \stemDown c8 \stemDown c4 -\f \stemDown e8 | % 58
        \stemDown e8 [ \stemDown d8 \stemDown b8 ] \stemDown d8 [
        \stemDown c8 \stemDown a8 ] | % 59
        \stemUp g4. \stemUp g4 \stemDown d'8 }
    \break \repeat volta 2 {
        | \barNumberCheck #60
        \stemDown g4 \stemDown g8 \stemDown g4 \stemDown d8 | % 61
        \stemDown b4 \stemDown b8 \stemDown b4. -\f | % 62
        \stemDown b4. \stemDown d8 [ \stemDown c8 \stemDown b8 ] | % 63
        \stemDown d4 \stemDown c8 \stemUp a4 \stemDown c8 \break | % 64
        \stemDown fs4 \stemDown fs8 \stemDown fs4 \stemDown e8 | % 65
        \stemDown c4 \stemDown c8 \stemDown c4 \stemDown e8 | % 66
        \stemDown e8 [ \stemDown d8 \stemDown b8 ] \stemDown d8 [
        \stemDown c8 \stemDown a8 ] | % 67
        \stemUp g4. \stemUp g4. }
    \break | % 68
    \key a \major \stemUp fs8 s8*5 \repeat volta 2 {
        | % 69
        \stemUp e4 \stemUp e8 \stemUp e8 [ \stemUp cs8 \stemUp e8 ] |
        \barNumberCheck #70
        \stemUp fs4 \stemUp e8 \stemUp e4 \stemUp a8 | % 71
        \stemDown cs4 \stemDown cs8 \stemDown e4 \stemDown cs8 | % 72
        \stemDown b4 \stemUp a8 \stemUp fs8 [ \stemUp gis8 \stemUp a8 ]
        \break | % 73
        \stemUp e4 \stemUp e8 \stemUp e8 [ \stemUp cs8 \stemUp e8 ] | % 74
        \stemUp fs4 \stemUp e8 \stemUp e4 \stemUp a8 | % 75
        \stemDown cs8 [ \stemDown cs8 \stemDown cs8 ] \stemDown e4
        \stemDown cs8 | % 76
        \stemDown b4. \stemUp a4 \stemDown d8 }
    \break \repeat volta 2 {
        | % 77
        \stemDown cs4 \stemDown b8 -- \stemDown e4 \stemDown cs8 | % 78
        \stemDown b4 \stemUp a8 \stemUp fs4 \stemDown d'8 | % 79
        \stemDown cs4 \stemDown b8 \stemDown e4 \stemDown cs8 |
        \barNumberCheck #80
        \stemDown b4 \stemUp a8 \stemUp fs8 [ \stemUp gis8 \stemUp a8 ]
        \break | % 81
        \stemUp e4 \stemUp e8 \stemUp e8 [ \stemUp cs8 \stemUp e8 ] | % 82
        \stemUp fs4 \stemUp e8 \stemUp e4 \stemUp a8 | % 83
        \stemDown cs4 \stemDown cs8 \stemDown e4 \stemDown cs8 | % 84
        \stemDown b4. \stemUp a4. }
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


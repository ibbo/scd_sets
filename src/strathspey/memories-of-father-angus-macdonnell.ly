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
   score-markup-spacing = #'((basic-distance . 10))
   markup-system-spacing = #'((basic-distance . 5))
   system-system-spacing= #'((basic-distance . 12))
%   markup-markup-spacing = #'((basic-distance . 0))
}

\layout {
  indent = 0 \mm
  \context { 
        \ChordNames
        chordNoteNamer = #lower-extension
        \override ChordName.font-size = #0.5
  }
}

\score {
  \relative c''{
    <<
    {
      \clef treble
      \key g \major
      \time 4/4
      \partial 4 \bar".|:" \tuplet 3/2 { d,8 e fs } |
      g8. fs16 g8. a16 g8. fs16 e d8. | b'16 d8. d e16 d4 \tuplet 3/2 { b8 c d } |
      e8. c16 d8. b16 c8. a16 b g8. | e2. \tuplet 3/2 { d8 e fs } |
      g8. fs16 g8. a16 g8. fs16 e d8. | b'16 d8. d b16 d8 g4 e8 |
      d8. b16 g8. b16 a8. g16 a b8. | \acciaccatura fs8 g2. \bar":|.|:" \break
      b16 d8. | e4 e8. fs16 g8. fs16 e d8. | b16 d8. d b16 d4 \tuplet 3/2 { b8 c d } |
      e8. c16 d8. b16 c8. a16 b g8. | e2. \tuplet 3/2 { d8 e fs } |
      g8. fs16 g8. a16 g8. fs16 e d8. | b'16 d8. d b16 d8 g4 e8 |
      d8. b16 g8. b16 a8. g16 a b8. | \acciaccatura fs8 g2. \bar":|."
    }
    \new ChordNames {
      \chordmode {
        \partial 4 s4 |
        g2 d:7 | g1 | c4 g a:m g | c2. d4:7 |
        g2 d:7 | g2 s8 c4. | g2 d:7 | g1 |
        e1:m | g | c4 g a:m g | c2. d4:7 |
        g2 d:7 | g2 s8 c4. | g2 d:7 | g2. |
      }
    }
    >>
  }
  \header {
    piece = "Memories of Father Angus MacDonnell"
  }
}

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

% Da Ferry Reel
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key d \major
        \time 4/4
        \partial 4 a4 |
        d d8 a d4 d | e8 fs e d cs4 a | b8 cs d b a b a fs | g4 e e a |
        d d8 a d4 d | e8 fs e d cs4 a | b8 cs d b a g fs e | d4 d' d \bar":|.|:" \break
        d8 e | fs4 fs8 d fs4 fs8 d | fs g a g fs e d fs | e4 e8 cs e4 e8 cs | e8 fs e d cs b a g' | \break
        fs4 fs8 d fs4 fs8 d | fs g a g fs e d fs | e fs g fs e d cs b | a4 d d \bar":|."
      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          d1 | e2:7 a | g d | e:m a:7 |
          d1 | e2:7 a:7 | g a:7 | d2 s |
          d1 | d2 b:m | a1:7 | e2:7 a:7 |
          d1 | s | e2:m a:7 | d2 s4 |
        }
      }
    >>
  }
  \header{
    piece = "Da Ferry Reel"
    opus = "Traditional"
  }
}

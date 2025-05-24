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

% The Breakdown
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key a \major
        \time 4/4
        \partial 4 \tuplet 3/2 {e8 fs gs} | a4 a, a8 cs b a | e4 a a8 cs b a | fs4 b b8 cs b a | gs a b cs d e fs gs | \break
        a4 a, a8 cs b a | e4 a a8 cs b a | gs a b cs d e fs gs | a e cs e a,4 \bar":|.|:" \break
        cs8 b | a4 a' a, a' | a, a8 b cs b a4 | e e' e, e' | e, b'8 cs d cs b4 | \break
        a a' a, a' | a, a8 b cs b a4 | e b'8 cs e d cs b | a4 cs a \bar":|."
      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          a1 | s | b:m | e:7 |
          a | s | e:7 | a |
          a | s | e:7 | s |
          a | s | e:7 | a2. |
        }
      }
    >>
  }
  \header{
    piece = "The Breakdown"
  }
}

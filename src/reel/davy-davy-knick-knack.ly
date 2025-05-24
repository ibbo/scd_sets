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

% Davy Davy Knick Knack
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key g \major
        \time 4/4
        \partial 4 b8 a |
        g fs g a b4 b | g8 fs g a b4 b | d8 c b c a4 a | d8 c b c a4 a |
        g8 fs g a b4 b | g8 fs g a b4 b | d8 c b c a c b a | g4 b g \bar":|." \break
        b8 c | d4. c8 b4 d | g g d2 | d8 c b c a4 a | d8 c b c a4 a |
        d4. c8 b4 d | g g d2 | d8 c b c a c b a | g4 b g \bar":|."

      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          g1 | s | d:7 | s |
          g1 | s | d:7 | g |
          g1 | s | d:7 | s |
          g1 | s | d:7 | g2. |
        }
      }
    >>
  }
  \header{
    piece = "Davy Davy Knick Knack"
    opus = "Traditional"
  }
}

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
    \relative c'' {
        <<
        {
            \clef treble
            \key g \major
            \time 4/4
            \partial 4 b8 c |
            d4 g g d8 c | b4 d d b8 a | g4 g a a | b8 a b c b4 b8 c |
            d4 g g d8 c | b4 d d b8 a | g4 g a8 g a b | g2 g4 \bar":|.|:" \break
            b8 c | d4 g e c | d g e c| d b a g | a8 g a b a4 b8 c |
            d4 g e c | d g e c | b8 d b g a c a fs | g2 g4 \bar":|."
        }
        \chords {
            \partial 4 s4 |
            g1 | g | g2 d:7 | g1 |
            g | g | g2 d:7 | g1 |
            g2 c | g c | g1 | d:7 |            
            g2 c | g c | g d:7 | g2. |
        }
        >>
    }
    \header {
        piece = "The Ton"
    }
}

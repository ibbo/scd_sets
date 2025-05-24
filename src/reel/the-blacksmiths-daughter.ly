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
        d8 b b4 d8 b g b | d b b4 a8 b c a | d b b4 d8 b g b | \tuplet 3/2 {c b a} b g a b c a \bar":|.|:" |
        g4 b8 g d g b g | g4 b8 g a b c a | g4 b8 g d g b g | \tuplet 3/2 {c b a} b8 g a b c a \bar":|."
        }
        \chords {
            g1 | g2 d:7 | g1 | c2 d:7 |
            g1 | g2 d:7 | g1 | c2 d:7 |
        }
        >>
    }
    \header {
        piece = "The Blacksmith's Daughter"
        opus = "Traditional"
    }
}

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
            \time 3/4
            \partial 4 g'4 |
            d2 b4 | a2 g4 | g b2 | d,2 e4 | g2 g4 | c2 b4 | b a2~ | a2 g'4 | \break
            d2 b4 | a2 g4 | g b2 | d,2 e4 | g2 b4 | a2 g4 | g2.~ | g2 b4 | \break
            c2 b4 | c2 d4 | e2 d4 | g2 e4 | d2 b4 | b2 d4 | e2.~ | e2 g4 | \break
            d2 b4 | a2 g4 | g8 a b2 | d,2 e4 | g2 b4 | a2 g4 | g2.~ | g2 \bar"|."
        }
        \chords {
            \partial 4 s4 |
            g2. | d:7 | g | d:7 | e:m | c | d:7 | d:7 |
            g | d:7 | g | d:7 | e:m | d:7 | c | g |
            c | c | a:m | c | g | g | c | c |
            g | d:7 | g | d:7 | e:m | d:7 | c | g2 |
        }
        >>
    }
    \header {
        piece = "Jock o' Hazeldean"
    }
}

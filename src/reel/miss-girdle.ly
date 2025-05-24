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
            \key d \major
            \time 4/4
            d4 d8 b cs a b g | d'4 d8 b cs d e fs | d4 d8 b cs a b g | g' fs e d cs d e fs \bar":|." \break
            d4 fs8 d a' d, fs d | d4 fs8 d cs d e fs | d4 fs8 d a' d, fs d | g fs e d cs d e fs |
            d4 fs8 d a' d, fs d | d4 fs8 d cs4 e8 fs | a fs g e fs d e d | g fs e d cs d e fs \bar"|."
        }
        \chords {
            d1 | d2 a | d1 | e2:m a:7 |
            d1 | d2 a:7 | d1 | e2:m a:7 |
            d1 | d2 a | d2 b:m | e:m a:7 |
        }
        >>
    }
    \header {
        piece = "Miss Girdle"
        opus = "Traditional"
    }
}

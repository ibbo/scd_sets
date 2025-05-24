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

hasteToTheWedding = \score {
    \relative c'' {
      <<
        {
            \clef treble
            \key d \major
            \time 6/8
            \partial 4 s8 a |
            a fs a a a' fs | e d e fs d b | a fs a a d fs, | e fs e e fs g |
            a fs a a a' fs | e d e fs d b | a fs a fs' a fs | d e d d \bar":|.|:"
            fs g | a fs a a fs a | b g b b g b | a fs a a g fs | g fs g e fs g |
            a4. fs | e8 d e fs d b | a fs a fs' a fs | d e d d \bar":|."
        }
        \new ChordNames{
          \chordmode{
            \partial 4 s4 |
            d2. | g | d | e4.:m a:7 | d2. | g | d4. a:7 | d2. |
            d2. | g | d | e4.:m a:7 | d2. | g | d4. a:7 | d8 |
          }
        }
      >>
    }
    \header {
        piece = "Haste to the Wedding"
        opus = "Traditional"
    }
}

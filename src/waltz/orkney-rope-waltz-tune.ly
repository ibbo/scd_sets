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
            \time 3/4
            \partial 4 a8 g |
            fs4. g8 a4 | d,2 d'4 | cs4. d8 e4 | a,2 g4 | fs4. g8 a4 | d,2 fs4 | e2.~ | e4 a g |
            fs4. g8 a4 | d,2 d'4 | cs4. d8 e4 | a,2 g4 | fs4. g8 fs4 | e4. fs8 e4 | d fs a | d2 \bar"|." \break
            d8 e | fs2 e4 | d2 cs4 | d cs b | a2. | g'2 fs4 | e2 d4 | cs e2~ | e2 a,4 | \break
            fs'2 e4 | d2 cs4 | d cs b | a2 g4 | fs4. g8 fs4 | e4. fs8 e4 | d fs a | d2 \bar"|."
        }
        \chords {
            \partial 4 s4 |
            d2. | d | a:7 | a:7 | d | b:m | e:m | a:7 | d | d | a:7 | a:7 | d | a:7 | d | d
            d | d | g | d | e:m | e:m | a:7 | a:7 | d | d | g | d | d | a:7 | d | d2
        }
        >>
    }
    \header {
        piece = "Orkney Rope Waltz"
    }
}

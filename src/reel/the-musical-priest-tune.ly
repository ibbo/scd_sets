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

% The Musical Priest (North Brig of Edinburgh)
\score {
    \relative c''{
        <<
        {
            \clef treble
            \key b \minor
            \time 4/4
            \partial 4 b8 a |
            fs b b a b4 b8 d | cs b a fs' e cs b a | fs b b a b4 b8 d | cs b a cs b4 \bar":|.|:" \break
            b8 cs | d4 d8 cs d fs e d | \tuplet 3/2 {cs b a} e' a, fs' a, e' a, | d cs b cs d e fs b | a fs e cs b4 \bar":|.|:" \break
            b8 a | fs8 b b a b4 b8 d | cs b a fs' e cs b a | fs b b a b4 b8 d | cs b a cs b4 \bar":|." \break
            b8 cs | d b \tuplet 3/2 {b b b} b' a fs b | a fs e cs a b cs e | d b \tuplet 3/2 {b b b} b' a fs b | a fs e cs b4 b8 cs |
            d b \tuplet 3/2 {b b b} b' a fs b | a fs e cs a b cs e | d cs b cs d e fs b | a fs e cs b4 \bar"|."
        }
        \new ChordNames {
            \chordmode {
                \set majorSevenSymbol = \markup {maj7}
                \partial 4 s4 |
                b1:m | a | g:maj7 | a2 b:m |
                d1 | a | b:m | a2 b:m |
                b1:m | a | b:m | a2 b:m |
                b1:m | a | b:m | a2 b4:m |
            }
        }
        >>
    }
    \header {
        piece = "The Musical priest"
        opus = "A. Hughes"
    }
}

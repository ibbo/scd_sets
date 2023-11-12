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
            \key f \major
            \time 2/4
            \partial 8 c16 bf |
            a8 f f g16 f | e8 g g c16 bf | a8 f f bf | a c c f16 c |
            a8 f f g16 f | e8 g g c16 bf | bf a g f f e d c | d8 f f c' \bar":|.|:" \break
            f8. g16 a8 g16 f | e8 g c,8. e16 | f8. g16 bf a g f | e8 g g a16 g |
            f8. g16 a8 g16 f | e8 g c, a | bf16 a g f f e d c | d8 f f4 \bar":|."
        }
        \chords {
            \partial 8 s8 |
            f2 | c | f2 | f | f | c | bf4 c | bf f |
            f2 | c | f4 bf | c2 | f | c | bf4 c | bf f |
        }
        >>
    }
    \header {
        piece = "Landlady of Inver Inn"
    }
}
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
    \relative c' {
        <<
        {
            \clef treble
            \key d \minor
            \time 4/4
            \bar ".|:" d8. f16 e d8. a4 \tuplet 3/2 { a8 bf b } | c4 e8. d16 c8. e16 g e8. |
            f8. d16 e8. c16 d d'8. d bf16 | 
            \tuplet 3/2 { a8 bf a } \tuplet 3/2 { g f e } \tuplet 3/2 { f e d }  \tuplet 3/2 { e d c } |
            d8. f16 e d8. a4 \tuplet 3/2 { a8 bf b } | c4 e8. d16 c8. e16 g e8. |
            f d16 e8. c16 d d'8. d bf16 | \tuplet 3/2 { a8 bf a } \tuplet 3/2 { g f e } f16 d8. d8. \parenthesize cs'16 \bar":|.|:" | \break
            \repeat volta 2 {
                d4 f8. e16 d8. a'16 f d8. | c4 g8. a16 e c8. c a'16 |
                d4 f8. e16 \tuplet 3/2 { d8 f a } \tuplet 3/2 { f e d } |
                \tuplet 3/2 { a' bf a } \tuplet 3/2 { e f g } \tuplet 3/2 { f e d } \tuplet 3/2 { e d cs } |
                d4 f8. e16 d8. a'16 f d8. | c4 g8. c16 e, c8. c e16 |
                \tuplet 3/2 { d8 e f } \tuplet 3/2 { e f g } \tuplet 3/2 { f g a } \tuplet 3/2 { g a bf } |

            }

            \alternative {
                { \tuplet 3/2 { a bf a } \tuplet 3/2 { g f e } \tuplet 3/2 { f e d } \tuplet 3/2 { e d c } }
                { \tuplet 3/2 { a' bf a } \tuplet 3/2 { g f e } f16 d8. d4 }
            }
        }

        \chords {
            d1:m | c | d4:m c bf2 | a1:m | d:m | c | d4:m c bf2 | a:m d:m |
            d1:m | c | d:m | a2:m | d:m | d1:m | c | d4:m c bf2 | a:m d4:m a:m | a2:m d:m |
        }
        >>
    }
    \header {
        piece = "The Quiet Man"
        opus = "Jim Sutherland"
    }
}
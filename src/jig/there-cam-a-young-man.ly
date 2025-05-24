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
    \relative c''{
        <<
        {
            \clef treble
            \key a \minor
            \time 6/8
            \partial 8 e,8 |
            a b a c4 d8 | e d c b4 a8 | g a g b4 c8 | d g e d b g |
            a b a c4 d8 | e d c b c d | e4 a,8 a b gs | a4. a4 \bar":|.|:"
            b8 | c4 e8 g4 a8 | g e c g' e c | g4 b8 d4 e8 | d g e d b g |
            c4 e8 g4 a8 | g e c d e g | a4 a,8 a b gs | a4. a4 \bar":|." |
        }
        \new ChordNames {
            \chordmode {
                \partial 8 s8 |
                a2.:m | a4.:m d:7 | g2. | g |
                a:m | a4.:m e:7/gs | a:m e:7 | a2.:m |
                c | c | g | d4.:7 g:7 |
                c2. | c | a4.:m e:7 | a4.:m s4 |
            }
        }
        >>
    }

    \header{
        piece = "There Cam' a Young Man"
        opus = "Traditional"
    }
}

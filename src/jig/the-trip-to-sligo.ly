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
        \key e \minor
        \time 6/8
        \bar".|:" e,4 e'8 b g e | d4 d'8 a fs d | e4 e'8 b g e | b' a g e'4 fs8 |
        g fs e d c b | a b g fs e d | e fs g a b c | b g fs e4. \bar":|.|:" |
        e'8 b e g fs e | d a d g a g | e b e g fs e | fs a fs g b g |
        fs a fs g fs e | d c b a g fs | e fs g a b c | b g fs e4. \bar":|."
        }
        \new ChordNames {
            \chordmode {
                e2.:m | d | e:m | b4.:m e:m |
                g2. | a4.:m d | e:m a:m | b:m e:m |
                e2.:m | d4. b:m7 | e2.:m | b4.:m e:m |
                d2. | g | e4.:m a:m | b:m e:m |
            }
        }
        >>
    }
    
    \header {
        piece = "The Trip to Sligo"
        opus = "John Anderson"
    }
}

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
            \key d \major
            \time 6/8
            \partial 8 b8 |
            a fs d d fs d | a' fs a d4 b8 | a8 fs d d fs d | e cs a a4 b'8 |
            a fs d d fs d | a' fs a d4 a8 | b d b cs e cs | d4. d4 \bar":|." \break
            g8 | fs a fs d4 fs8 | g b g e4 g8 | fs a fs d4 fs8 | e cs a a4 g'8 |
            fs a fs d4 fs8 | g b g e4 g8 | fs d fs e cs e | d4. d4 g8 |
            fs a fs d4 fs8 | g b g e4 g8 | fs a fs d4 fs8 | e cs a a4 g'8 |
            fs a fs d e fs | g b g e fs g | fs a fs g e cs | d4. d4 \bar"|."
        }
        \new ChordNames {
            \chordmode {
                \partial 8 s8 |
                d2. | d4. g | d b:m | a2.:7 |
                d | d4. d:7/fs | g a:7 | d4. s4 |
                s8 | d2. | e4.:m a:7 | d b:m | a2.:7 |
                d4. d:7/fs | e:m/g a:7 | d a:7 | d2. |
                d | e4.:m a:7 | d b:m | a2.:7 |
                d4. d:7/fs | e:m/g a:7 | d a:7 | d4. s4 |
            }
        }
        >>
    }

    \header {
        piece = "Miss Charlotte Stirling's Jig"
        opus = "Traditional"
    }
}

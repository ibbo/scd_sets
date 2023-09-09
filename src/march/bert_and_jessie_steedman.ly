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

% Bert and Jessie Steedman
\score {
    \relative c'' {
        <<
        {
            \clef treble
            \key d \major
            \time 4/4
            \partial 8 a,8 |
            d8. e16 d8 d' a fs fs8. e16 | d8. g16 b8 g a4 fs8. e16 |
            d8. cs16 b8 d b16 a8. a' fs16 | e4 gs8 b a4 fs8. e16 |
            d8. e16 d8 d' a fs fs8. e16 | d 8. g16 b8 g a4 d,8. cs16 | 
            b8 b' g8. e16 fs a8. d, fs16 | g8 a fs8. e16 d4 d8 \bar"||" \break
            fs8 | g8. b16 a8 cs d d, a' fs | g8. b16 a8 g fs4 d'8 cs |
            b d g,8. b16 a8 d fs d | e8. d16 cs8 b b a gs g |
            fs16 a8. d, d'16 a8 fs fs8. e16 | d8. g16 b8 g a4 d,8. cs16 |
            b8 b' g8. e16 fs a8. d, fs16 | g8 a fs8. e16 d4 d8 \bar":|."
        }
        \chords {
            \partial 8 s8 |
            d4 a:7 d d:7/a | g g/b d d:7/a | g a:7 d b:m | e e/gs a a:7 |
            d a:7 d d:7/a | g g/b a:m d:7 | g g/b d b:m | e:m a:7 d2 |
            e4:m a:7 d2 | e4:m a:7 d d:7/a | g g/b d b:m | e2 a4 a:7/e |
            d a:7 b:m d:7/a | g g/b a:m d:7 | g g/b d b:m | e:m a:7 d4. |
        }
        >>
    }
    \header {
        piece = "Bert and Jessie Steedman"
        opus = "Colin Dewar"
    }
}
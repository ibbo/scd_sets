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

% The Banks of the Nith
\score {
    \relative c' {
        <<
        {
            \clef treble
            \key g \major
            \time 4/4
            \partial 2 b4 c |
            d2 b'4 a | g2 fs4 e | d2. c4 | b2 d |
            e c'4 b | a2 g4 e | fs2. e4 | d c b c |
            d2 b'4 a | g2 fs4 e | d2. c4 | b2 d |
            e4 a g e | fs d b' a | g2 g4. a8 | g2 fs4 g |
            a2. g4 | fs d g a | b2 b4 a | g2 a4 b |
            c2 b4 a | g2 fs4 g | a4. g8 fs4 e | d c b c |
            d2 b'4 a | g2 fs4 e | d2. c4 | b2 d |
            e4 a g e | fs d b' a | g2 g4. a8 | g2 \bar"|."
        }
        \chords {
            \partial 2 s2 |
            g2 g/b | c fs:7/cs | g/d d:7 | g g:7/b |
            c1 | a2:7 a:7/cs | d a:7/cs | d:7 d:7/fs |
            g g/b | c fs:7/cs | g/d d:7 | g g:7/b |
            c a:m7 | d:7 d:7/fs | g c | g a:7 \bar"||" |
            d1:7 | d2:7 d:7/fs | g b:7 | e1:m |
            a:m | a2:7 a:7/cs | d1:7 | d2:7 d:7/fs |
            g g/b | c fs:7/cs | g/d d:7 | g g:7/b |
            c a:m7 | d:7 d:7/fs | g c | g |            
        }
        >>
    }
    \header {
        piece = "The Banks of the Nith"
        opus = "Jim Johnstone"
    }
}
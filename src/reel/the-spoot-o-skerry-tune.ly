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

% The Spoot o' Skerry
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key g \major
        \time 4/4
        \partial 4 d,8 e |
        g4 d8 e g d e g | d e g a b4 a8 b | g4 d8 e g a b d | e g e d b4 a8 b |
        g4 d8 e g d e g | d e g a b4 a8 b | g'4 e8 d e d b a | b4 g g \bar":|.|:" \break
        \repeat volta 2 {
        e'8 fs | g4 e8 d e d b4 | b8 a b g e4 d8 e | g a b d e g e d | b4 a a |
        }
        \alternative {
            { e'8 fs | g4 e8 d e d b4 | b8 a b g e4 d8 e | g a b d e g e d | b4 g g \bar":|." }
            { d8 e | g4 d8 e g d e g | d e g a b4 a8 b | g'4 e8 d e d b a | b4 g g \bar "|." }
        }
      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          g1 | g2 d:7 | g e:m | a2:m7 d:7 |
          g2 d:7/a | g/b e:m | a:m7 d:7 | g4 c g s |
          e1:m | g2:7 c | g e:m | a:m d:7 |
          e1:m | g2:7 c | g/d d | g4 c g s
          g2 d:7/a | g/b e:m | a:m7 d:7 | g4 c g
        }
      }
    >>
  }
  \header{
    piece = "The Spoot o' Skerry"
    opus = "Traditional"
  }
}

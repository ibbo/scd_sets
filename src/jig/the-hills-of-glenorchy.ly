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

% The Hills of Glenorchy
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key e \minor
        \time 6/8
        \partial 4 d cs |
        b4 e,8 e fs e | b' a b d4 b8 | a4 d,8 d e d | fs d fs a d cs | \break
        b4 e,8 e fs e | b' a b d4 e8 | d b d a fs d | e fs e e4 \bar":|." \break
        b'8 | e fs e e d b | e fs g g fs e | d e d d a fs | d' cs d fs e d | \break
        e fs e e d b | e fs g fs4 e8 | d b d a fs d | e fs e e \bar":|."
      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          e2.:m | s | d | s |
          e2.:m | s | g4. d | e2.:m |
          e2.:m | s | d | s |
          e2.:m | s | g4. d | e2:m |
        }
      }
    >>
  }
  \header{
    piece = "The Hills of Glenorchy"
    opus = "Traditional"
  }
}

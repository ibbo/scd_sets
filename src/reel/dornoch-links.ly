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

% Dornoch  Links, Keith
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key a \major
        \time 2/4
        \partial 8 a'16 fs |
        e8 a, cs b16 cs |
        e8 a, a a'16 fs |
        e8 a, cs b16 cs |
        fs8 b, b cs16 d |
        e fs e d cs8 b16 a |
        cs8 e a cs, |
        d fs b, e16 d |
        cs8 a a \bar":|.|:"\break
        e'8 | a4 e8 fs16 gs |
        a8 e16 d cs8 b16 a |
        a'4 e16 fs e cs |
        d8 b b gs' |
        a4 e8 fs16 gs |
        a e fs d cs8 b16 a |
        d8 fs b, e16 d |
        cs8 a a \bar":|."
      }
      \new ChordNames{
        \chordmode{
          \partial 8 s8 |
          a2 | s | a | b:m | a | s | b4:m e:7 | a2 |
          a | s | a | b4:m e:7 | a2 | s | b4:m e:7 | a s8
        }
      }
    >>
  }
  \header{
    piece = "Dornoch Links"
    opus = "arr. K Smith"
  }
}

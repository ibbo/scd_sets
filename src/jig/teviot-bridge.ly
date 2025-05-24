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

% Teviot bridge
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key a \major
        \time 6/8
        \partial 4 cs8 d |
        e cs a e4 a8 | fs4 a8 e4 a8 | e8 fs e e4 e'8 | d4 cs8 b4 a8 | \break
        e'8 cs a e4 a8 | fs4 a 8 e4 cs'8 | d4 fs8 e cs a | b4. a8 \bar":|.|:" \break
        cs d | e cs a a cs e | fs gs fs fs gs a | e cs a a cs a | b gs e e cs' d | \break
        e cs a a cs e | a gs fs e d cs | d fs a e cs a | b4. a8 \bar":|."
      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          a2. | d4. a | a2. | d4. e:7 |
          a2. | d4. a | d a | e:7 a |
          a2. | d | a | e:7 |
          a | d4. a | d a | e4.:7 a8 |
        }
      }
    >>
  }
  \header{
    piece = "Teviot bridge"
    opus = "Traditional"
  }
}

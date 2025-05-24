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


% Drumdelgie
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key d \major
        \time 6/8
        \partial 8 b8 |
        a b a a fs a | d4 e8 g4 fs8 | e4 a,8 a g fs | g4. g8 fs g |
        a b a a fs a | d4 e8 g4 fs8 | e4 a,8 a b cs | d4. d4 \bar":|.|:" \break
        e8 | fs4 fs8 d e fs | g4 fs8 e a g | fs4 d8 a4 fs8 | g4. g8 fs g |
        a b a a fs a | d4 e8 g4 fs8 | e4 a,8 a b cs | d4. d4 \bar":|."
      }
      \new ChordNames{
        \chordmode{
          \partial 8 s8 |
          d2. | d4. g | a:7 d | e:m a:7 |
          d2. | d4. g | a2.:7 | d |
          d4. b:m | e:m a:7 | d2. | e4.:m a:7 |
          d2. | d4. g | a2.:7 | d4. s4 |
        }
      }
    >>
  }
  \header{
    piece = "Drumdelgie"
    opus = "Traditional"
  }
}

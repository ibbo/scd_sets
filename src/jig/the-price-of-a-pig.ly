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

priceOfAPig = \score {
  \relative c''{
    <<
    {
      \clef treble
      \key a \minor
      \time 6/8
      e8. d16 e8 a,8. a16 a8 | b16 a8. b8 g8. g16 g8 | e'8. e16 e8 e8. d16 b8 | d8. e16 f8 g8. f16 a8 |
      e8. d16 e8 a,8. a16 a8 | b16 a8. b8 g8. g16 g8 | e'8. e16 e8 e8. d16 b8 | b8. a16 a8 a4. \bar":|.|:" \break
      e'8. f16 g8 a8. e16 e8 | e8. f16 g8 a8. e16 a8 | a8. g16 e8 e8. d16 b8 | d8. e16 f8 g8. f16 a8 |
      e8. d16 e8 a,8. a16 a8 | b16 a8. b8 g8. b16 d8 | e8. e16 e8 e8. d16 b8 | b8. a16 a8 a4. \bar":|."
    }
    \new ChordNames {
      \chordmode {
        a2.:m | g | a:m | d
        a:m | g | a4.:m e:m | a2.:m
        e4.:m a:m | e:m a:m | a2.:m | d4. g
        a2.:m | g | a4.:m e:m7 | a2.:m
      }
    }
    >>
  }
  \header {
    piece = "The Price of a Pig"
    opus = "Traditional"
  }
}

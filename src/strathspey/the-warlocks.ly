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
      \key e \minor
      \time 4/4
      \repeat volta 2 {
      \bar".|:" b16 e,8. g fs16 e4 e8 fs16 g | a b8. a fs16 d4 d8 e16 fs |
      g8. e16 fs8. d16 e e'8. e fs16 | g8. e16 fs e d8 \acciaccatura b8 e4 |
      }

      \alternative{
        {e8. a,16 \bar":|." \break }
        {e'8. b16 | }
      }

      e16 fs g8 b,8. g'16 e b8. g'8. e16 | fs g a8 d,8. a'16 fs d8. a' fs16 |
      e fs g8 b,8. g'16 e b8. g'8. e16 | d8. b16 a8. fs16 e4 e8. b'16 |
      e fs g8 b,8. g'16 e b8. g'8. e16 | fs a8. d, a'16 fs d8. a'8. fs16 |
      e8. g16 fs8. e16 d8. b16 a8. fs16 | g8. b16 a8. fs16 e4 e \bar":|."

    }
    \new ChordNames {
      \chordmode {
        e2.:m a4:7 | d1 | e4:m d e2:m | e4:m d e2:m |
        s4 | e1:m | d | e2.:m a4:7 | g4 d e2:m |
        e2.:m a4:7 | d1 | e4:m d g d | g b:m e2:m |
      }
    }
    >>
  }
  \header {
    piece = "The Warlocks"
  }
}

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
  \relative c'' {
    <<
      {
        \clef treble
        \key g \major
        \time 4/4
        \partial 4 d |
        g16 g8. fs16 g8. g,8. b16 d8. fs16 | g16 g8. b,16 g'8. c,16 g'8. d16 g8. |
        e16 e8. fs e16 d4 e8. d16 | c4 e,16 c'8. fs,16 c'8. b16 a8. |
        g16 g8. fs16 g8. g, b16 d g8. | d g16 b d8. e4. e8 |
        d8 e16 fs g8. a16 b8. d,16 a'8. d,16 | g8. fs16 e d8. g4. \bar"||" \break
        \partial 8 g,8 | b16 b8. d16 a8. g4 b16 d8. | e4 \tuplet 3/2 {e8 d b} d4 g,8. a16 | b b8. d16 a8. g4 g16 d'8. | d4 c16 b8. a4 g8. a16 |
        b16 b8. d16 a8. g4 b16 d8. g16 g8. b g16 e4( e8.) d16 | d8. d,16 c' b8. c4 b16 a8. | g fs16 e d8. g4 \bar":|."
      }
      \new ChordNames {
        \chordmode {
          \partial 4 s4 |
          g1 | g2 a4:m7 g/b | c2 g4/b e:7 | a2:m d:7 |
          g g/b | g:7 c | g4/b d:7/a g d/fs | e:m d:7 g2 |
          g4 d:7 g2 | c g4/b d:7/a | g d/fs e2:m | a:m7 d:7 |
          g4 d/fs e2:m | g:7 c | g4/b e:7/gs a:m b:7 | a:m7/c d:7 g |
        }
      }
    >>
  }
  \header {
    piece = "The Marvellous Middle School Medley"
    opus = "M Johnstone"
  }
}

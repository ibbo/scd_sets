\version "2.22.0"

\include "../helpers/preamble.ly"

\score {
  \relative c'{
    <<
      {
        \clef treble
        \key d \major
        \time 4/4
        \partial 4 d8 e |
        fs4 e8 d fs a b cs |
        d4 d b8 d b a |
        fs4 e8 d fs a b a |
        fs4 e e d8 e |
        fs4 e8 d fs a b cs |
        d4 d b8 d b a |
        fs4 e8 d fs a b a |
        fs4 d d \bar":|."\break
        b'8 cs | d4 d b8 d b a |
        fs a a fs a4 b8 cs |
        d4 d8 b e4 e |
        cs8 e cs b a4 b8 cs |
        d4 d b8 d b a |
        fs4 fs d8 e d e |
        fs4 e8 d fs a b a |
        fs4 d d \bar":|."
      }
      \new ChordNames{
        \chordmode {
          \partial 4 s4 |
          d1 | d2 g2 | d1 | d2 a | d1 | d2 g | d2 a | d g |
          d/fs g | d/fs g | d/fs e/gs | a a/g | d/fs g | d/fs g | b:m a | d/fs d4 
        }
      }
    >>
  }
  \header {
    piece = "Colgrave Soond"
    opus = "Bobby Tulloch"
  }
}

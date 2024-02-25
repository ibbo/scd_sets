\version "2.22.1"

\include "../helpers/preamble.ly"

\score {
  \relative c'' {
    <<
      {
        \clef treble
        \key a \minor
        \time 6/8
        \partial 8 \bar".|:" e,8 |
        e a a a b b | b c c c d d | d e e e d c | b g g a e e |
        e a a a b b | b c c c d d | d e e e d c | b a g a4 r8 \bar":|." | \break
        \repeat volta 2 {
          <a' c,>4. a8 g e | g e e d e g | <a c,>4. a8 g e | g, a b d e g |
          <a c,>4. a8 g e | g e e d e g | a4 e8 g4 e8 | 
        }

        \alternative {
          {d e d d e g \bar":|."}
          {d e d a4 \bar":|."}
        }

      }
      \new ChordNames{
        \chordmode{
          \partial 8 s8 |
          a2.:m | s | s | g4. a:m |
          a2.:m | s | s | g4. a:m |
          a2.:m | c4. g | a2.:m | g4. e:m |
          a2.:m | c4. g | a:m e:m | g2. | g4. a4:m |
        }
      }
    >>
  }

  \header {
    piece = "The Long Water"
    opus  = "Sandy Brechin"
  }
}
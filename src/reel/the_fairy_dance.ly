\version "2.22.0"

\include "../helpers/preamble.ly"

\score {
    \relative c'' {
        <<
        {
            \clef treble
            \key d \major
            \time 4/4
            \partial 4 d8 e |
            fs4 fs8 d fs4 fs8 d | fs4 fs8 d cs d e g | fs4 fs8 d g fs e d | cs a b cs d e fs g | 
            fs4 fs8 d fs4 fs8 d | fs4 fs8 d cs d e g | fs4 fs8 d g fs e d | cs a b cs d e fs g | \break
            a4 a8 fs b4 b8 a | g fs g e a4 a8 g | fs4 fs8 d g fs e d | cs a b cs d e fs g |
            a4 a8 fs b4 b8 a | g fs g e a4 a8 g | fs4 fs8 d g fs e d | cs a b cs d4 \bar":|."

        }
        \chords {
            \partial 4 s4 |
            d1 | d2 a | d g | a a:7 | d1 | d2 a | d g | a a:7 |
            d b:7 | e:m a | d g | a a:7 | d b:7 | e:m a | d g | a:7 d4 |
        }
        >>
    }

    \header {
        piece = "The Fairy Dance"
        opus = "Traditional"
    }
}
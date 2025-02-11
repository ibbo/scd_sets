\version "2.22.0"

\include "../helpers/preamble.ly"

\score {
    \relative c' {
        <<
        {
            \clef treble
            \key d \major
            \time 4/4
            d4 fs8. g16 a16 fs8. e fs16 | d16 d'8. d e16 d8. cs16 b8. a16 |
            b16 b8. d b16 a a8. d a16 | g8. fs16 e8. d16 cs e8. e16 fs8. \bar":|."
            d16 d'8. d e16 fs8. e16 d8. a16 | b16 b8. b' a16 g8. fs16 e8. d16 |
            b16 b8. d b16 a a8. d fs16 | g8. fs16 e8. d16 cs e8. e16 fs8. |
            d,16 d'8. d e16 fs8. e16 d8. a16 | b16 b8. b' a16 g8. fs16 e8. d16 |
            b16 b8. d b16 a a8. d fs16 | g8. fs16 e8. a16 fs d8. d4 \bar":|.|:"

        }
        \chords {
            d2. a4/cs | b2:m a | g d/fs | e:m a |
            d2. d4/fs | g2 e:m | g d | e:m a |
            d2. d4/fs | g2 e:m | g d | e4:m a d2 |

        }
        >>
    }
    \header {
        piece = "Crail"
        opus = "Kerr MM4"
    }
}



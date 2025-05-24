\version "2.22.0"

\include "../helpers/preamble.ly"

\score {
    \relative c'' {
        <<
        {
            \clef treble
            \key g \major
            \time 6/8
            \partial 8 d8 |
            \bar".|:" b4 b8 b4 d,8 | b'4 b8 b4 d8 | g fs e d c b | d4 c8 a4 b8 |
            c4 c8 c4 d,8 | c'4 c8 c4 e8 | e d b d c a | g4. g4 d'8 \bar":|.|:" | \break
            g4 g8 g4 d8 | b4 b8 b4. | b4. d8 c b | d4 c8 a4 c8 |
            fs4 fs8 fs4 e8 | c4 c8 c4 e8 | e d b d c a | g4. g \bar":|." |
        }
        \chords {
            \partial 8 d8:7 |
            g2. | g | g4. gs:dim | a2.:m | d | d | a4.:m7 d:7 | g g4 d8:7 |
            g2. | g | g4. e:m | a2.:m | d | d | a4.:m d:7 | g2. |
        }
        >>
    }
    \header {
        piece = "Jig in G"
        opus = ""
    }
}


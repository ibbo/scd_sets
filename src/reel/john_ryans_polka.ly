\version "2.22.0"

\include "../helpers/preamble.ly"

\score {
    \relative c'' {
        <<
        {
            \clef treble
            \key d \major
            \time 4/4
            d4 d b8 cs d b | a4 fs a fs | d' d b8 cs d b | a4 fs e d |
            d' d b8 cs d b | a4 fs a d8 e | fs4 d e cs | d2 d \bar":|.|:" \break
            fs4 d d e8 fs | g4 fs e d8 e | fs4 d a d | fs a a4. g8 |
            fs4 d d e8 fs | g4 fs e d8 e | fs4 d e cs | d2 d \bar":|."
        }
        \chords {
            d2 g | d1 | d2 g | d a | d g | d1 | d2 a | d1 |
            d1 | g2 d | d1 | d2 a | d1 | g | d2 a | d1 |
        }
        >>
    }
    \header {
        piece = "John Ryan's Polka"
    }
}
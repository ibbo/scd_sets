\version "2.22.0"

\include "../helpers/preamble.ly"

\score {
    \relative c'' {
        <<
        {
            \clef treble
            \key a \major
            \time 4/4
            \partial 4 e4 |
            fs4 e8 fs b,4 fs'8 e | fs a e fs cs a e' cs | fs4 e8 fs b,4 fs'8 e | fs a e cs b4 b8 cs |
            fs4 e8 fs b,4 fs'8 e | fs a e fs cs a e' cs | fs4 e8 fs b,4 fs'8 e | fs a e cs b4 b8 cs | \break
            b4 b8 cs d4 cs8 b | a4 a8 b a b cs a | b4 b8 cs d4 cs8 b | fs'4 e8 cs b4 b8 cs | \break
            b4 b8 cs d4 cs8 b | a4 a8 b a b cs a | d4 fs8 d cs4 e8 cs | fs8 a e cs b4 b \bar":|."
        }
        \chords {
            \partial 4 s4 |
            b1:m | b2:m a | b1:m | d4 a/cs b2:m | b1:m | b2:m a | b1:m | d4 a/cs b2:m |
            b1:m | a | b1:m | d4 a/cs b2:m | b1:m | a | d2 a | a b4:m |
        }
        >>
    }
    \header {
        piece = "The Ale is Dear"
        opus = "Traditional"
    }
}

\version "2.22.0"

\include "../helpers/preamble.ly"

\score {
    \relative c'' {
        <<
        {
            \clef treble
            \key a \major
            \time 4/4
            \partial 4 cs8 d |
            e4 e8 fs e a, cs e | fs a, d fs e4 cs8 d | e4 e8 fs e a, cs e | cs a d cs b4 cs8 d |
            e4 e8 fs e a, cs e | fs a, d fs e4 cs8 e | d cs cs b b fs' e b | cs4 a a \bar":|.|:" \break
            \repeat volta 2 {
                cs8 e | a4 a,8 a' cs, a' a, a' | fs a d, a' e4 cs8 e | a4 a,8 a' cs, a' a, a' | cs, a d cs b4 
            }

            \alternative {
                {cs8 e | \break a4 a,8 a' cs, a' a, a' | fs a d, a' e4 cs8 e | d cs cs b b fs' e b | cs4 a a \break}
                {cs8 d | e4 e8 fs e a, cs e | d d a' fs e4 cs8 e | d cs cs b b fs' e b | cs4 a a \bar"|."}
            }
        }
        \chords {
            \partial 4 s4 | a1 | d2 a | a1 | a2 e:7 |
            a1 | d2 a | d e:7 | a a |
            a1 | d2 a | a1 | a2 e:7 |
            a1 | d2 a | d e:7 | a a |
            a1 | d2 a | d e:7 | a a4 |
        }
        >>
    }

    \header {
        piece = "Itchy Fingers"
        opus = "Traditional"
    }
}
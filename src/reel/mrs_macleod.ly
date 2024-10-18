\version "2.22.0"

\include "../helpers/preamble.ly"

\score {
    \relative c'' {
        <<
        {
            \clef treble
            \key a \major
            \time 4/4
            \partial 4 cs8 b |
            a4 a' fs8 e fs a | cs,4 cs8 b cs4 cs8 b | a4 a' fs8 e fs a | b,4 b8 a b d cs b |
            a4 a' fs8 e fs a | cs,4 cs8 b cs4 cs8 e | fs gs fs e fs4  \tuplet 3/2 { e8 fs gs } | a fs e cs b4 b8 cs | \break
            a4 cs8 a e' cs cs fs | e cs cs8 b cs4 cs8 a' | a,4 cs8 a e' cs cs fs | b,4 b8 a b d cs b |
            a4 cs8 a e' cs cs fs | e cs cs8 b cs4 cs8 e | fs gs fs e fs4 \tuplet 3/2 { e8 fs gs } | a fs e cs b4 \bar":|."

        }
        \chords { \partial 4 s4 |
        a1 | a | a2 d | b:m e:7 | a1 | a | d | a2 e:7 |
        a1 | a2 e:7 | a1 | b2:m e:7 | a1 | a | d | a2 e4:7 |

        }
        >>
    }
    \header {
        piece = "Mrs MacLeod of Raasay"
        opus = "Traditional"
    }
}
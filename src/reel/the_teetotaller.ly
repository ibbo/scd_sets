\version "2.22.0"

\include "../helpers/preamble.ly"

\score {
    \relative c'' {
        <<
        {
            \clef treble
            \key g \major
            \time 4/4
            \partial 4 \bar".|:" \tuplet 3/2 { d,8 e fs } |
            g4 g8 fs g a b c | d b g' e d b a c | b e, e d e fs g a | b g a fs g fs e d |
            g4 g8 fs g a b c | d b g' e d b a c | b e, e d e fs g a | b g a fs g4 \bar":|.|:" \break
            a4 | b8 e e d e4 e8 fs | g e a fs g fs e d a d d cs d4 d8 e | fs d fs a g fs e d |
            b e e d e4 e8 fs | g e a fs g fs e d | b e, e d e fs g a | b g a fs g4 \bar":|."
        }
        \chords {
            \partial 4 s4 |
            g1 | g | e:m | e2:m d:7 | g1 | g | e2:m c | g4 d:7 g2 |
            e1:m | e:m | d | d | e:m | e:m | e:m | g4 d:7 g |
        }
        >>
    }
    \header {
        piece = "The Teetotaller"
        opus = "Traditional"
    }
}
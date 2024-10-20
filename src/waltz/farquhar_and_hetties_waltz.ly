\version "2.22.0"

\include "../helpers/preamble.ly"

\score {
    \relative c'' {
        <<
        {
            \clef treble
            \key d \major
            \time 3/4
            \partial 4 a'8. g16 |
            fs4 a ~ a8. fs16 | d4 ~ d8. fs16 e8. d16 | b4 d ~ d8. b16 | a4 ~ a8. b16 a8. g16 | \noBreak
            fs4 a d | fs a ~ a8. fs16 | e2. ~ | \noBreak e2 a8. g16 |
            fs4 a ~ a8. fs16 | d4 ~ d8. fs16 e8. d16 | b4 d4 ~ d8. b16 | a4 ~ a8. b16 a8. g16 |
            fs4 a d16 fs8. | e4 ~ e8. d16 cs4 | d2. ~ | d2 \bar":|.|:" \break a8. g16 |
            fs4 a d | fs2 e8. fs16 | e16 d8. ~ d4 b | a ~ a8. b16 a8. g16 |
            fs4 a d | fs a ~ a8. fs16 | e2. ~ |  e2 a8. b16 | \break
            a4 fs e | fs2 e8. fs16 | e16 d8. ~ d4 b | a ~ a8. b16 a8. g16 |
            fs4 a d16 fs8. | e4 ~ e8. d16 cs4 | d2. ~ | d2 \bar":|."

        }
        \chords {
            \partial 4 s4 |
            d2. | d/fs | g | d | d | d/fs | a | a/cs |
            d | d/fs | g | d | d | a | g | d |
            d | d/fs | g | a | d | b:m | e:m | a |
            d | d:7 | g | d/fs | e:m | a | g2 a4 | d2 |
        }
        >>
    }
    \header {
        piece = "Farquhar and Hettie's Waltz"
        opus = "Farquhar MacRae"
    }
}


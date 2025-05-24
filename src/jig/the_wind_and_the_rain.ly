\version "2.22.0"

\include "../helpers/preamble.ly"

\score {
    \relative c'' {
        <<
        {
            \clef treble
            \key a \major
            \time 6/8
            \partial 8 fs,8 |
            \bar".|:" e4 e8 e cs e | fs4 e8 e4 a8 | cs4 cs8 e4 cs8 | b4 a8 fs gs a |
            e4 e8 e cs e | fs4 e8 e4 a8 | cs cs cs e4 cs8 | b4. a4 d8 \bar":|.|:" | \break
            cs4 b8 e4 cs8 | b4 a8 fs4 d'8 | cs4 b8 e4 cs8 | b4 a8 fs gs a |
            e4 e8 e cs e | fs4 e8 e4 a8 | cs4 cs8 e4 cs8 | b4. a4. \bar":|." |
        }
        \chords {
            \partial 8 e8:7 |
            a4. a:7/cs | d a/cs | a fs:m7 | b:m7 e:7 | a a:7/cs | d a4/cs c8:dim | b2.:m7 | e4.:7 a |
            a4. fs:m | b:m e:7 | a a:7/cs | d e:7 | a a/cs | d a/cs | b2.:m7 | e4.:7 a |
        }
        >>
    }
    \header {
        piece = "The Wind and the Rain"
        opus = ""
    }
}


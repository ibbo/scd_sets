\version "2.22.0"

\include "../helpers/preamble.ly"

\score {
    \relative c'' {
        <<
        {
            \clef treble
            \key d \major
            \time 6/8
            \partial 8 a8 |
            d4 d8 d cs d | b4 d8 b4 a8 | fs'4 fs8 fs e fs | g4. b,4. |
            cs4 cs8 cs b cs | e4 cs8 b4 a8 | fs a a e g g | fs4. fs4 a8 |
            d4 d8 d cs d | b4 d8 b4 a8 | fs'4 fs8 fs e fs | g4. b,4. |
            cs4 cs8 cs b cs | e4 cs8 b4 a8 | fs a a g cs, cs | d4. d4 a'8 |
            d a d fs d fs | a4 fs8 d4 a8 | a'4 a8 a g e8 | b4. b4 c8 |
            cs!4 cs8 cs b cs | e4 cs8 b4 a8 | fs a a e g g | fs4. fs4 a8 |
            d8 a d fs d fs | a4 fs8 d4 a8 | a'4 a8 a g e8 | b4. b4 c8 |
            cs!4 cs8 cs b cs | e4 cs8 b4 a8 | fs a a g cs, cs | d4. d4. |
        }
        \chords {
            \partial 8 a8:7 |
            d4. d:7/fs | g a:7 | d b:7 | e2.:m | a4. e:7/b | a/cs a | e:m7 a:7 | d d4 a8:7 |
            d4. d:7/fs | g a:7 | d b:7 | e2.:m | a4. e:7/b | a/cs a | e:m7 a:7 | d d4 a8:7 |
            d4. d/cs | d/b d/a | d ds:dim | e2.:m7 | a | a | e4.:m7 a:7 | d a:7 |
            d4. d/cs | b:m d/a | d b:7 | e2.:m | a | a | e4.:m7 a:7 | d d | 

        }
        >>
    }
    \header {
        piece = "L T C Irvine"
        opus = ""
    }
}


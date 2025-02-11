\version "2.22.0"

\include "../helpers/preamble.ly"

\score {
    \relative c'' {
        <<
        {
            \clef treble
            \key g \major
            \partial 4 c8. b16 |
            a16 a,8. a b16 c8. d16 e8. fs16 | g g g8 b8. a16 g4 c8. b16 |
            a16 a,8. a b16 c8. d16 e8. a16 | c8. a16 b gs8. a4 c8. b16 |
            a16 a,8. a b16 c8. d16 e8. fs16 | g g g8 b8. a16 g4 c8. d16 |
            e8. c16 d8. b16 c8. a16 b g8. | e a16 c b a gs a4 c8. b16 |
            a16 a'8. a fs16 g8. a16 b a g fs | e a8. a fs16 g4 fs8. g16 |
            e a8. a fs16 g8. a16 b a g fs | e8. c16 d8. b16 c a8. c b16 |
            a a'8. a fs16 g8. a16 b a g fs | e a8. a fs16 g4 fs8. g16 |
            \tuplet 3/2 { a8 g fs } \tuplet 3/2 { g a b } \tuplet 3/2 { e, d c } \tuplet 3/2 { b c d } |
            e8. c16 d8. b16 c a8. \bar":|."

        }
        \chords {
            \partial 4 s4 |
            a1:m | g2. e4:7/gs | a1:m | e4:m e:7 a2:m |
            a1:m | g | a4:m e:m/b a:m/c g/d | e:m e:7 a2:m |
            a:m e:m | a:m g | a:m e:m | a4:m g/b a2:m/c |
            a2:m e:m | a:m g | a4:m a:m/b a:m/c a:m/d | a:m/e g a:m
        }
        >>
    }
    \header {
        piece = "Miss Lyall"
        opus = "Trad"
    }
}
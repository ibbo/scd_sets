\version "2.22.1"

\include "../helpers/preamble.ly"

\score {
    \relative c'' {
        <<
        {
            \clef treble
            \key a \major
            \time 6/8
            e4. e8. cs16 a8 | e'8. cs16 a8  b8. cs16 d8 | e4. e8. cs16 a8  | b8. cs16 d8 cs8. b16 a8 |
            e'4. e8. cs16 a8 | e'8. cs16 a8  b8. cs16 d8 | e16 a8. e8 fs8. e16 d8 | cs8. d16 b8 a4. \bar":|.|:" \break
            a8. cs16 e8 a,8. cs16 e8 | a,8. d16 fs8 a,8. d16 fs8 | a,8. cs16 e8 a,8. cs16 e8 | b8. cs16 d8 cs8. b16 a8 |
            a8. cs16 e8 a,8. cs16 e8 | a,8. d16 fs8 a,8. d16 fs8 | e16 a8. e8 fs8. e16 d8 | cs8. d16 b8 a4. \bar":|.|:" \break
            a'8. e16 e8 e8. d16 cs8 | a'8. e16 e8 e8. d16 cs8 | a'8. e16 e8 e8. d16 cs8 | b8. cs16 d8 cs8. b16 a8 |
            a'8. e16 e8 e8. d16 cs8 | a'8. e16 e8 e8. d16 cs8 | a'8. e16 e8 fs8. e16 d8 | cs8. d16 b8 a4. \bar":|.|:" \break
            cs8. a16 cs8 cs8. a16 cs8 | d8. b16 d8 d8. b16 d8 | cs8. a16 cs8 cs8. a16 cs8 | b8. g16 b8 b8. g16 b8 |
            cs8. a16 cs8 cs8. a16 cs8 | d8. b16 d8 d8. b16 d8 | e16 a8. e8 fs8. e16 d8 | cs8. d16 b8 a4. \bar":|."
        }
        \chords {
            a2. | a4. e | a2. | e4. a | a2. | a4. e | a d | e a |
            a2. | d | a | e4. a | a2. | d | a4. d | e a |
            a2. | a | a | e4. a | a2. | a | a4. d | e a |
            a2. | d | d | g | a | d | a4. d | e a |
        }
        >>
    }
    \header {
        piece = "The Athole Highlanders"
        opus = "Trad"
    }
}


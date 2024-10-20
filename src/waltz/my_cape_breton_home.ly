\version "2.22.0"

\include "../helpers/preamble.ly"

\score {
    \relative c'' {
        <<
        {
            \clef treble
            \key g \major
            \time 3/4
            g'4. g8 \noBeam fs g | a4 fs d | c4. c8 \noBeam b c | d4 b g |
            g'4. g8 \noBeam fs g | a4 fs d | c4. c8 \noBeam b c | d4. fs4 g8 |
            g4. g8 \noBeam fs g | a4 fs d | c4. c8 \noBeam b c | d4 b g |
            d8 c'4. c8 b | a4. g8 \noBeam fs g | g2. ~ | g \bar":|.|:"
            d4. g8 b4 | c4. c8 \noBeam b c | d4. b8 g4 | a g e |
            d4. g8 b4 | c4. c8 \noBeam b c | d8 g4. g8 fs | d4 c a |
            d,4. g8 b4 | c4. c8 \noBeam b c | d4. b8 g4 | a g e | 
            d8 g'4. g8 fs | d4 c a | g2. ~ | g \bar":|."
        }
        \chords {
            g2. | a:m | c | d | g | a:m | c | d |
            g | a:m | c | d4 c g/b | a2.:m | a:m | d | d |
            g | a:m | g/b | c | g | a:m | g2/b c4 | d2.:7 |
            g | a:m | g/b | c | a:m | a:m | d | d |

        }
        >>
    }
    \header {
        piece = "My Cape Breton Home"
        opus = "Jerry Holland"
    }
}


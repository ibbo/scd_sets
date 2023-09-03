\version "2.22.0"

#(define (lower-extension pitch chbass)
    "Return re-sized markup for pitch note name."
    #{
        \markup \fontsize #-2
        #(note-name->markup pitch chbass)
    #}
)

\include "english.ly"


\paper {
   top-margin = 5\mm
   bottom-margin = 5\mm
   left-margin = 5\mm
   right-margin = 5\mm
   ragged-bottom = ##f
%   page-limit-inter-system-space=##t
%   page-limit-inter-system-space-factor=1
%   after-title-space = 10\mm
   score-markup-spacing = #'((basic-distance . 10))
   markup-system-spacing = #'((basic-distance . 5))
   system-system-spacing= #'((basic-distance . 12))
%   markup-markup-spacing = #'((basic-distance . 0))
}

\layout {
  indent = 0 \mm
  \context { 
        \ChordNames
        chordNoteNamer = #lower-extension
        \override ChordName.font-size = #0.5
  }
}

\score {
    \relative c''{
        <<
        {
            \clef treble
            \key d \major
            \time 6/8
            \partial 8 b8 |
            a fs d d fs d | a' fs a d4 b8 | a8 fs d d fs d | e cs a a4 b'8 |
            a fs d d fs d | a' fs a d4 a8 | b d b cs e cs | d4. d4 \bar":|." \break
            g8 | fs a fs d4 fs8 | g b g e4 g8 | fs a fs d4 fs8 | e cs a a4 g'8 |
            fs a fs d4 fs8 | g b g e4 g8 | fs d fs e cs e | d4. d4 g8 |
            fs a fs d4 fs8 | g b g e4 g8 | fs a fs d4 fs8 | e cs a a4 g'8 |
            fs a fs d e fs | g b g e fs g | fs a fs g e cs | d4. d4 \bar"|."
        }
        \new ChordNames {
            \chordmode {
                \partial 8 s8 |
                d2. | d4. g | d b:m | a2.:7 |
                d | d4. d:7/fs | g a:7 | d4. s4 |
                s8 | d2. | e4.:m a:7 | d b:m | a2.:7 |
                d4. d:7/fs | e:m/g a:7 | d a:7 | d2. |
                d | e4.:m a:7 | d b:m | a2.:7 |
                d4. d:7/fs | e:m/g a:7 | d a:7 | d4. s4 |
            }
        }
        >>
    }

    \header {
        piece = "Miss Charlotte Stirling's Jig"
        opus = "Traditional"
    }
}

\score {
    \relative c''{
        <<
        {
            \clef treble
            \key a \minor
            \time 6/8
            \partial 8 e,8 |
            a b a c4 d8 | e d c b4 a8 | g a g b4 c8 | d g e d b g |
            a b a c4 d8 | e d c b c d | e4 a,8 a b gs | a4. a4 \bar":|.|:"
            b8 | c4 e8 g4 a8 | g e c g' e c | g4 b8 d4 e8 | d g e d b g |
            c4 e8 g4 a8 | g e c d e g | a4 a,8 a b gs | a4. a4 \bar":|." |
        }
        \new ChordNames {
            \chordmode {
                \partial 8 s8 |
                a2.:m | a4.:m d:7 | g2. | g |
                a:m | a4.:m e:7/gs | a:m e:7 | a2.:m |
                c | c | g | d4.:7 g:7 |
                c2. | c | a4.:m e:7 | a4.:m s4 |
            }
        }
        >>
    }

    \header{
        piece = "There Cam' a Young Man"
        opus = "Traditional"
    }
}

\score {
    \relative c'' {
        <<
        {
        \clef treble
        \key e \minor
        \time 6/8
        \bar".|:" e,4 e'8 b g e | d4 d'8 a fs d | e4 e'8 b g e | b' a g e'4 fs8 |
        g fs e d c b | a b g fs e d | e fs g a b c | b g fs e4. \bar":|.|:" |
        e'8 b e g fs e | d a d g a g | e b e g fs e | fs a fs g b g |
        fs a fs g fs e | d c b a g fs | e fs g a b c | b g fs e4. \bar":|."
        }
        \new ChordNames {
            \chordmode {
                e2.:m | d | e:m | b4.:m e:m |
                g2. | a4.:m d | e:m a:m | b:m e:m |
                e2.:m | d4. b:m7 | e2.:m | b4.:m e:m |
                d2. | g | e4.:m a:m | b:m e:m |
            }
        }
        >>
    }
    
    \header {
        piece = "The Trip to Sligo"
        opus = "John Anderson"
    }
}
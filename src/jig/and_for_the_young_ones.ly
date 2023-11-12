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
    \relative c'' {
        <<
        {
            \clef treble
            \key f \major
            \time 6/8
            \partial 8 c8 |
            \repeat volta 2 {
                f4 c8 d e f | c a a a4 f8 | d'4 bf8 g4 f8 | e f g c,4 e'8 |
                f4 c8 d e f | c a a a4 f8 | d4 f8 e f g | 
            }

            \alternative {
                {f4. f4 c'8 \bar":|."}
                {f,4. f4 e8 \bar"||"}
            }
            \break
            d4 d'8 cs d e | d a a a4 af8 | g4 c8 b c d |
            c g g 
            <<
             {
                \voiceOne
                f'4 e8
             }
             \new Voice {
                \voiceTwo g,4.
             }
            >>
            \oneVoice
            d'4 d8 cs d e | d a a a g f | e f g f e d | c4. c4 c'8 |
            f4 c8 d e f | c a a a4 f8 | d'4 bf8 g4 f8 | e f g c,4 e'8 |
            f4 c8 d e f | c a a a4 f8 | d4 f8 e f g | f4. f4 \bar"|." |
        }
        \chords {
            \partial 8 s8 |
            f2. | f | bf4. g:m | c2. | f2. | f | g4.:m c:7 | f2. | f4. a:7 |
            d2.:m | d:m | c2. | c4. a:7 | d2.:m | d:m | d4.:m g:7 | c2.:7 |
            f2. | f | bf4. g:m | c2.:7 | f2. | f | g4.:m c:7 | f4. s4 |
        }
        >>
    }
}
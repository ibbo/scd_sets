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


% The evening calm
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key c \major
        \time 4/4
        \partial 4 g |
        c8. g16 c d8. b4 g | c8. g16 c8 e g4. g8 |
        a8. f16 e d8. g4 c,| c8 b16 c d8. a16 g4. g8 |
        c8. g16 c d8. b4 g | c8. g16 c8 e f4 e8. d16 |
        c e8. g8. f16 e8 c d b | c8. b16 c d8. c4 g' |
        a8. g16 g e8. f8. e16 e c8. | c8 b16 c d8. a16 b4. g8 |
        a16 c8. e8 f g4. g8 | a8. g16 e c8. d4 e |
        c8. b16 c d8. b4 g | c8. g16 c8 e f4 f8 g |
        a8. g16 g e8. f8. e16 e c8. | c16 d e8 d8. c16 c4 \bar":|."

      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          c2 g4 g:7 | c4 a:m g2 | f2 c | c4 d:m g2 |
          c g4 g:7 | c2 f | c f4 g:7 | c c:sus4 c2 |
          a:m d:m | f4 d/fs g2 | a:m g | d:m g |
          c g4 g:7 | c a:m f2 | a:m d:m | c4 g:7 c |
        }
      }
    >>
  }
  \header{
    piece = "The Evening Calm"
    opus = "T Ibbotson"
  }
}

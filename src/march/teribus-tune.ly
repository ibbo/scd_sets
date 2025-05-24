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

% Teribus
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key d \major
        \time 4/4
        \partial 4 a4 |
        d a d4. e8 |
        fs4 a fs d |
        g4. fs8 e4. d8 |
        cs4 e cs a |
        d a d4. e8 |
        fs4 a fs d |
        g4. fs8 e4 a8 g |
        fs4 d d \bar":|."\break
        fs8 g | a2 a4. g8 |
        fs4 a fs d |
        g4. fs8 e4. d8 |
        cs4 e cs a |
        a'2 a4. g8 |
        fs4 a fs d |
        g4. fs8 e4 a8 g |
        fs4 d d8 e fs g |\break
        a2 a4. g8 |
        fs4 a fs d |
        g4. fs8 e4. d8 |
        cs4 e cs a |
        d a d4. e8 |
        fs4 a fs d |
        g4. fs8 e4 a8 g |
        fs4 d d \bar"|."
      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          d1 | s | g | a | d | s | g2 a:7 | d1 |
          d | s | g | a | d | s | g2 a:7 | d1 |
          d | s | g | a | d | s | g2 a:7 | d s4
        }
      }
    >>
  }
  \header{
    piece = "Teribus"
  }
}

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


% My Love She's but a Lassie Yet
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key d \major
        \time 4/4
        \partial 4 d8 cs |
        d4 d, fs a | d d, d d'8 cs | d4 d, fs a | e' e, e d'8 cs |
        d4 d, fs a | b g' fs e | d8 cs b a b cs d e | fs4 d d \bar":|." \break
        fs8 g | a4. fs8 g4 e | fs d d fs8 g | a4. fs8 g fs g a | b4 e, e fs8 g |
        a4 fs g e | fs d e4. cs8 | d cs b a b cs d e | fs4 d d \bar":|."
      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          d1 | s | s | e2:m a:7 |
          d1 | g | a:7 | d |
          d2 a:7 | d1 | d2 g | e:m a:7 |
          d g | d a:7 | g a:7 | d2. |
        }
      }
    >>
  }
  \header{
    piece = "My Love she's but a Lassie Yet"
    opus = "Traditional"
  }
}

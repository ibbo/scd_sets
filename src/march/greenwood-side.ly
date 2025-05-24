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

% Greenwood Side
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key b \minor
        \time 4/4
        \partial 4 fs4 |
        b,4. cs8 b4 a |
        b8 cs d e fs2 |
        e4. fs8 e fs e d |
        cs4 a a fs' |
        b,4. cs8 b4 a |
        b8 cs d e fs2 |
        e4 a fs e8 fs |
        d4 b b \bar":|."\break
        d8 e | fs4. d8 b4 fs' |
        b,8 b b cs fs2 |
        e4. fs8 e fs e d |
        cs4 a a d8 e |
        fs4. d8 b4 fs' |
        b,8 b b cs fs2 |
        e4 a fs e8 fs |
        d4 b b d8 e |\break
        fs4. d8 b4 fs' |
        b,8 b b cs fs2 |
        e4. fs8 e fs e d |
        cs4 a a fs' |\noBreak
        b,4. cs8 b4 a |
        b8 cs d e fs2 |
        e4 a fs e8 fs |
        d4 b b \bar"|."
      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          b1:m | s | a | s | b:m | s | a2 fs/as | b1:m |
          b:m | s | a | s | b:m | s | a2 fs/as | b1:m |
          b:m | s | a | s | b:m | s | a2 fs/as | b:m s4
        }
      }
    >>
  }
  \header{
    piece = "Greenwood Side"
  }
}

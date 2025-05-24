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

% Delavaird Brig
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key d \major
        \time 4/4
        \partial 4 \tuplet 3/2 {a8 b cs} |
        d8. e16 d8. b16 cs4 fs,16 a8. |
        b8. a16 g8. b16 a4 fs16 d8. |\noBreak
        g8. b16 \tuplet 3/2{g8 fs e} fs8. a16 \tuplet 3/2 {fs8 e d} |
        e8. gs16 b d8. cs4 \tuplet 3/2 {a8 b cs} |\break
        d8. e16 d8. b16 cs4 fs,16 a8. |
        b8. a16 g8. b16 a4 fs16 d8. |
        g8. b16 \tuplet 3/2{g8 fs e} fs8. a16 \tuplet 3/2 {fs8 e d} |
        e8. g16 fs e8. d4 \bar"||"\break
        d'8. e16 | fs8. g16 fs8. d16 e4 cs16 e8. |
        d8. e16 d8. b16 cs4 a16 fs8. |
        g8. b16 e8. g,16 fs8. a16 d8. fs,16 |
        \tuplet 3/2 {e8 gs b} e8. d16 cs a8. d e16 |\break
        fs8. g16 fs8. d16 e8. d16 cs e8. |
        d8. e16 d8. b16 cs8. b16 a cs8. |
        b8. g16 \tuplet 3/2 {b8 a g} a8. fs16 \tuplet 3/2 {a8 g fs} |
        e8. g16 fs e8. d4 \bar":|."
      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          d2 fs:m | g d | e:m d | e:7 a:7 |
          d fs:m | g d | e:m d | e4:m a:7 d2 |
          d2 fs:7 | b:m fs:m | e:m d | e:7 a:7 |
          d fs:7 | b:m fs:m | e:m d4 b:7 | e:m a:7 d
        }
      }
    >>
  }
  \header{
    piece = "Delavaird Brig"
  }
}

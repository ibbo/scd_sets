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

% Islay Jig
islayJig = \score {
    \relative c''{
      <<
        {
            \clef treble
            \key g \major
            \time 6/8
            \bar".|:" b8. \mark "Play 4x" a16 g8 e8. g16 e8 | d8. e16 g8 b8. a16 a8 | b8. a16 g8 e8. g16 e8 | d8. e16 g8 \appoggiatura d8 g4. \bar":|.|:" | \break
            %b8. a16 g8 e8. g16 e8 | d8. e16 g8 b8. a16 a8 | b8. a16 g8 e8. g16 e8 | d8. e16 g8 \appoggiatura d8 g4. \bar":|.|:" | \break
            b8. a16 g8 d'8. g,16 e'8 | d8. b16 g8 a8. g16 a8 | b8. a16 g8 d'8. g,16 e'8 | d8. b16 g8 a4. |
            g'8. fs16 e8 d8. b16 g8 | a8. g16 a8 b8. a16 g8 | b8. a16 g8 e8. g16 e8 | d8. e16 g8 \appoggiatura d8 g4. \bar":|."
        }
        \new ChordNames {
            \chordmode {
                g4. c | g d | g c | d g |
                %g c | g d | g c | d g |
                g2. | g4. d | g2. | g4. d |
                e:m g | d g | g c | d g |
            }
        }
      >>
    }
    \header {
        piece = "Islay Jig"
        opus = "Alan Reid"
    }
}

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


% The Braes of Dunvegan
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key d \major
        \time 4/4
        \partial 4 \bar".|:" fs,8. g16 |
        a8. b16 a16 fs8. a4 d8. e16 | fs8. d16 g16 e8. fs4 e8. d16 |
        b8. cs16 d8. b16 a8. fs16 d fs8.| e8. d16 e fs8. e4 fs8. g16 |
        a8. b16 a fs8. a4 d8. e16 | fs8. d16 g8. e16 fs4 e8. d16 |
        b8. cs16 d8. b16 a8. fs16 g e8. | fs4 d d \bar":|.|:" \break 

	      \repeat volta 2 {
	      fs'8. g16 |
        a8. fs16 g e8. fs16 a8. a,8. d16 | b16 g8. d'8. e16 fs4 e8. d16 |
        b8. cs16 d8. b16 a8. fs16 d fs8. | e8. d16 e fs8. e4
        }

	      \alternative {
	        { fs'8. g16 | \break
          a8. fs16 g e8. fs16 a8. a, d16 | b16 g8. d' e16 fs4 e8. d16 |
          b8. cs16 d8. b16 a8. fs16 g e8. | fs4 d d \bar":|." \break }
          { fs8. g16 |
          a8. b16 a fs8. a4 d8. e16 | fs8. d16 g e8. fs4 e8. d16 b8. cs16 d8. b16 a8. fs16 g e8. | fs4 d d \bar"|." }
        }

      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          d1 | d4 a:7 d2 | g d | e:7 a:7 |
          d1 | d4 a:7 d2 | g2 d4 a:7 | d1 |
          d4 a:7 d2 | g2 d | g d | e:7 a:7 |
          d4 a:7 d2 | g2 d | g d4 a:7 | d1 |
          d1 | d4 a:7 d2 | g2 d4 a:7 | d2. |
        }
      }
    >>
  }
  \header{
    piece = "The Braes of Dunvegan"
  }
}

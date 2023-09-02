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
\score {
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

\score {
    \relative c'' {
      <<
        {
            \clef treble
            \key d \major
            \time 6/8
            \partial 4 s8 a |
            a fs a a a' fs | e d e fs d b | a fs a a d fs, | e fs e e fs g |
            a fs a a a' fs | e d e fs d b | a fs a fs' a fs | d e d d \bar":|.|:"
            fs g | a fs a a fs a | b g b b g b | a fs a a g fs | g fs g e fs g |
            a4. fs | e8 d e fs d b | a fs a fs' a fs | d e d d \bar":|."
        }
        \new ChordNames{
          \chordmode{
            \partial 4 s4 |
            d2. | g | d | e4.:m a:7 | d2. | g | d4. a:7 | d2. |
            d2. | g | d | e4.:m a:7 | d2. | g | d4. a:7 | d8 |
          }
        }
      >>
    }
    \header {
        piece = "Haste to the Wedding"
        opus = "Traditional"
    }
}

\score {
  \relative c'' {
    <<
      {
        \clef treble
        \key a \minor
        \time 6/8
        \partial 8 \bar".|:" e,8 |
        e a a a b b | b c c c d d | d e e e d c | b g g a e e |
        e a a a b b | b c c c d d | d e e e d c | b a g a4 r8 \bar":|." | \break
        \repeat volta 2 {
          <a' c,>4. a8 g e | g e e d e g | <a c,>4. a8 g e | g, a b d e g |
          <a c,>4. a8 g e | g e e d e g | a4 e8 g4 e8 | 
        }

        \alternative {
          {d e d d e g \bar":|."}
          {d e d a4 \bar":|."}
        }

      }
      \new ChordNames{
        \chordmode{
          \partial 8 s8 |
          a2.:m | s | s | g4. a:m |
          a2.:m | s | s | g4. a:m |
          a2.:m | c4. g | a2.:m | g4. e:m |
          a2.:m | c4. g | a:m e:m | g2. | g4. a4:m |
        }
      }
    >>
  }

  \header {
    piece = "The Long Water"
    opus  = "Sandy Brechin"
  }
}
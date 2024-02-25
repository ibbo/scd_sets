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

hasteToTheWedding = \score {
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

priceOfAPig = \score {
  \relative c''{
    <<
    {
      \clef treble
      \key a \minor
      \time 6/8
      e8. d16 e8 a,8. a16 a8 | b16 a8. b8 g8. g16 g8 | e'8. e16 e8 e8. d16 b8 | d8. e16 f8 g8. f16 a8 |
      e8. d16 e8 a,8. a16 a8 | b16 a8. b8 g8. g16 g8 | e'8. e16 e8 e8. d16 b8 | b8. a16 a8 a4. \bar":|.|:" \break
      e'8. f16 g8 a8. e16 e8 | e8. f16 g8 a8. e16 a8 | a8. g16 e8 e8. d16 b8 | d8. e16 f8 g8. f16 a8 |
      e8. d16 e8 a,8. a16 a8 | b16 a8. b8 g8. b16 d8 | e8. e16 e8 e8. d16 b8 | b8. a16 a8 a4. \bar":|."
    }
    \new ChordNames {
      \chordmode {
        a2.:m | g | a:m | d
        a:m | g | a4.:m e:m | a2.:m
        e4.:m a:m | e:m a:m | a2.:m | d4. g
        a2.:m | g | a4.:m e:m7 | a2.:m
      }
    }
    >>
  }
  \header {
    piece = "The Price of a Pig"
    opus = "Traditional"
  }
}

\priceOfAPig

\islayJig

\hasteToTheWedding
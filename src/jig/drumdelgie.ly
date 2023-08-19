\version "2.14.2-1"

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
        \override ChordName #'font-size = #0.5
  }
}


% Drumdelgie
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key d \major
        \time 6/8
        \partial 8 b8 |
        a b a a fs a | d4 e8 g4 fs8 | e4 a,8 a g fs | g4. g8 fs g |
        a b a a fs a | d4 e8 g4 fs8 | e4 a,8 a b cs | d4. d4 \bar":|." \break
        e8 | fs4 fs8 d e fs | g4 fs8 e a g | fs4 d8 a4 fs8 | g4. g8 fs g |
        a b a a fs a | d4 e8 g4 fs8 | e4 a,8 a b cs | d4. d4 \bar":|."
      }
      \new ChordNames{
        \chordmode{
          \partial 8 s8 |
          d2. | d4. g | a:7 d | e:m a:7 |
          d2. | d4. g | a2.:7 | d |
          d4. b:m | e:m a:7 | d2. | e4.:m a:7 |
          d2. | d4. g | a2.:7 | d4. s4 |
        }
      }
    >>
  }
  \header{
    piece = "Drumdelgie"
    opus = "Traditional"
  }
}

% Teviot bridge
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key a \major
        \time 6/8
        \partial 4 cs8 d |
        e cs a e4 a8 | fs4 a8 e4 a8 | e8 fs e e4 e'8 | d4 cs8 b4 a8 | \break
        e'8 cs a e4 a8 | fs4 a 8 e4 cs'8 | d4 fs8 e cs a | b4. a8 \bar":|." \break
        cs d | e cs a a cs e | fs gs fs fs gs a | e cs a a cs a | b gs e e cs' d |
        e cs a a cs e | a gs fs e d cs | d fs a e cs a | b4. a8 \bar":|."
      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          a2. | d4. a | a2. | d4. e:7 |
          a2. | d4. a | d a | e:7 a |
          a2. | d | a | e:7 |
          a | d4. a | d a | e4.:7 a8 |
        }
      }
    >>
  }
  \header{
    piece = "Teviot bridge"
    opus = "Traditional"
  }
}

% The Hills of Glenorchy
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key e \minor
        \time 6/8
        \partial 4 d cs |
        b4 e,8 e fs e | b' a b d4 b8 | a4 d,8 d e d | fs d fs a d cs | \break
        b4 e,8 e fs e | b' a b d4 e8 | d b d a fs d | e fs e e \bar":|." \break
        g b | e fs e e d b | e fs g g fs e | d e d d a fs | d' cs d fs e d |
        e fs e e d b | e fs g fs4 e8 | d b d a fs d | e fs e e \bar":|."
      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          e2.:m | s | d | s |
          e2.:m | s | g4. d | e2.:m |
          e2.:m | s | d | s |
          e2.:m | s | g4. d | e2:m |
        }
      }
    >>
  }
  \header{
    piece = "The Hills of Glenorchy"
    opus = "Traditional"
  }
}


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

% Da Ferry Reel
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key d \major
        \time 4/4
        \partial 4 a4 |
        d d8 a d4 d | e8 fs e d cs4 a | b8 cs d b a b a fs | g4 e e a |
        d d8 a d4 d | e8 fs e d cs4 a | b8 cs d b a g fs e | d4 d' d \bar":|.|:" \break
        d8 e | fs4 fs8 d fs4 fs8 d | fs g a g fs e d fs | e4 e8 cs e4 e8 cs | e8 fs e d cs b a g' | \break
        fs4 fs8 d fs4 fs8 d | fs g a g fs e d fs | e fs g fs e d cs b | a4 d d \bar":|."
      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          d1 | e2:7 a | g d | e:m a:7 |
          d1 | e2:7 a:7 | g a:7 | d2 s |
          d1 | d2 b:m | a1:7 | e2:7 a:7 |
          d1 | s | e2:m a:7 | d2 s4 |
        }
      }
    >>
  }
  \header{
    piece = "Da Ferry Reel"
    opus = "Traditional"
  }
}

% The Spoot o' Skerry
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key g \major
        \time 4/4
        \partial 4 d,8 e |
        g4 d8 e g d e g | d e g a b4 a8 b | g4 d8 e g a b d | e g e d b4 a8 b |
        g4 d8 e g d e g | d e g a b4 a8 b | g'4 e8 d e d b a | b4 g g \bar":|.|:" \break
        \repeat volta 2 {
        e'8 fs | g4 e8 d e d b4 | b8 a b g e4 d8 e | g a b d e g e d | b4 a a |
        }
        \alternative {
            { e'8 fs | g4 e8 d e d b4 | b8 a b g e4 d8 e | g a b d e g e d | b4 g g \bar":|." }
            { d8 e | g4 d8 e g d e g | d e g a b4 a8 b | g'4 e8 d e d b a | b4 g g \bar "|." }
        }
      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          g1 | g2 d:7 | g e:m | a2:m7 d:7 |
          g2 d:7/a | g/b e:m | a:m7 d:7 | g4 c g s |
          e1:m | g2:7 c | g e:m | a:m d:7 |
          e1:m | g2:7 c | g/d d | g4 c g s
          g2 d:7/a | g/b e:m | a:m7 d:7 | g4 c g
        }
      }
    >>
  }
  \header{
    piece = "The Spoot o' Skerry"
    opus = "Traditional"
  }
}

% The Breakdown
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key a \major
        \time 4/4
        \partial 4 \tuplet 3/2 {e8 fs gs} | a4 a, a8 cs b a | e4 a a8 cs b a | fs4 b b8 cs b a | gs a b cs d e fs gs | \break
        a4 a, a8 cs b a | e4 a a8 cs b a | gs a b cs d e fs gs | a e cs e a,4 \bar":|.|:" \break
        cs8 b | a4 a' a, a' | a, a8 b cs b a4 | e e' e, e' | e, b'8 cs d cs b4 | \break
        a a' a, a' | a, a8 b cs b a4 | e b'8 cs e d cs b | a4 cs a \bar":|."
      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          a1 | s | b:m | e:7 |
          a | s | e:7 | a |
          a | s | e:7 | s |
          a | s | e:7 | a2. |
        }
      }
    >>
  }
  \header{
    piece = "The Breakdown"
  }
}

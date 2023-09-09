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

\score {
    \relative c'' {
        <<
        {
            \clef treble
            \key g \major
            \time 4/4
            \partial 4 b8 c |
            d4 g g d8 c | b4 d d b8 a | g4 g a a | b8 a b c b4 b8 c |
            d4 g g d8 c | b4 d d b8 a | g4 g a8 g a b | g2 g4 \bar":|.|:" \break
            b8 c | d4 g e c | d g e c| d b a g | a8 g a b a4 b8 c |
            d4 g e c | d g e c | b8 d b g a c a fs | g2 g4 \bar":|."
        }
        \chords {
            \partial 4 s4 |
            g1 | g | g2 d:7 | g1 |
            g | g | g2 d:7 | g1 |
            g2 c | g c | g1 | d:7 |            
            g2 c | g c | g d:7 | g2. |
        }
        >>
    }
    \header {
        piece = "The Ton"
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


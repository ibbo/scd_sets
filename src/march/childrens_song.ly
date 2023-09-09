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

% Children's song
\score {
    \relative c'' {
    <<
    {
        \clef treble
        \key a \major
        \time 4/4
        \partial 4 e4 |
        a, a8. cs16 e8 cs b a | a4 a8 cs e4. cs16 e |
        fs8 e16 fs a8. e16 fs8 a16 fs e8 fs16 e | cs8 a cs e16 cs b4 e |
        a, a8. cs16 e8 cs b a | a4 a8 cs e4. cs16 e |
        fs8 e16 fs a8. e16 fs8 a16 fs e8 fs16 e | cs8 a cs e16 cs a4 \bar"|." \break
        s8 cs16 e | fs4 fs8. e16 fs8 a a cs, | e8. fs16 e8 cs e4. cs16 e |
        fs4 fs8. e16 fs8 a a fs | cs a cs b16 cs b4. cs16 e |
        fs4 fs8. e16 fs8 a a cs, | e8. fs16 e8 cs e4. cs16 e |
        fs8 e16 fs a8. e16 fs8 a16 fs e8 fs16 e | cs8 a cs b16 cs a4 \bar":|."
    }
    \chords {
        \partial 4 s4 |
        a1 | s | d4 a d e | a2 e:7 |
        a1 | s | d4 a d e | a e:7 a2 |
        d1 | e | d | a2 e |
        d1 | e | d2. e4 | a e a |
    }
    >>
    }
    \header {
        piece = "The Children's Song"
        opus = "Traditional"
    }
}
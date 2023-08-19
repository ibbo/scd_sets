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


% The evening calm
\score{
  \relative c''{
    <<
      {
        \clef treble
        \key c \major
        \time 4/4
        \partial 4 g |
        c8. g16 c d8. b4 g | c8. g16 c8 e g4. g8 |
        a8. f16 e d8. g4 c,| c8 b16 c d8. a16 g4. g8 |
        c8. g16 c d8. b4 g | c8. g16 c8 e f4 e8. d16 |
        c e8. g8. f16 e8 c d b | c8. b16 c d8. c4 g' |
        a8. g16 g e8. f8. e16 e c8. | c8 b16 c d8. a16 b4. g8 |
        a16 c8. e8 f g4. g8 | a8. g16 e c8. d4 e |
        c8. b16 c d8. b4 g | c8. g16 c8 e f4 f8 g |
        a8. g16 g e8. f8. e16 e c8. | c16 d e8 d8. c16 c4 \bar":|."

      }
      \new ChordNames{
        \chordmode{
          \partial 4 s4 |
          c2 g4 g:7 | c4 a:m g2 | f2 c | c4 d:m g2 |
          c g4 g:7 | c2 f | c f4 g:7 | c c:sus4 c2 |
          a:m d:m | f4 d/fs g2 | a:m g | d:m g |
          c g4 g:7 | c a:m f2 | a:m d:m | c4 g:7 c |
        }
      }
    >>
  }
  \header{
    piece = "The Evening Calm"
    opus = "T Ibbotson"
  }
}

\score {
  \relative c'' {
    <<
      {
        \clef treble
        \key g \major
        \time 4/4
        \partial 4 d |
        g16 g8. fs16 g8. g,8. b16 d8. fs16 | g16 g8. b,16 g'8. c,16 g'8. d16 g8. |
        e16 e8. fs e16 d4 e8. d16 | c4 e,16 c'8. fs,16 c'8. b16 a8. |
        g16 g8. fs16 g8. g, b16 d g8. | d g16 b d8. e4. e8 |
        d8 e16 fs g8. a16 b8. d,16 a'8. d,16 | g8. fs16 e d8. g4. \bar"||" \break
        \partial 8 g,8 | b16 b8. d16 a8. g4 b16 d8. | e4 \times 2/3 {e8 d b} d4 g,8. a16 | b b8. d16 a8. g4 g16 d'8. | d4 c16 b8. a4 g8. a16 |
        b16 b8. d16 a8. g4 b16 d8. g16 g8. b g16 e4( e8.) d16 | d8. d,16 c' b8. c4 b16 a8. | g fs16 e d8. g4 \bar":|."
      }
      \new ChordNames {
        \chordmode {
          \partial 4 s4 |
          g1 | g2 a4:m7 g/b | c2 g4/b e:7 | a2:m d:7 |
          g g/b | g:7 c | g4/b d:7/a g d/fs | e:m d:7 g2 |
          g4 d:7 g2 | c g4/b d:7/a | g d/fs e2:m | a:m7 d:7 |
          g4 d/fs e2:m | g:7 c | g4/b e:7/gs a:m b:7 | a:m7/c d:7 g |
        }
      }
    >>
  }
  \header {
    piece = "The Marvellous Middle School Medley"
    opus = "M Johnstone"
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
        \partial 4 \times 2/3 {a8 b cs} |
        d8. e16 d8. b16 cs4 fs,16 a8. |
        b8. a16 g8. b16 a4 fs16 d8. |\noBreak
        g8. b16 \times 2/3{g8 fs e} fs8. a16 \times 2/3 {fs8 e d} |
        e8. gs16 b d8. cs4 \times 2/3 {a8 b cs} |\break
        d8. e16 d8. b16 cs4 fs,16 a8. |
        b8. a16 g8. b16 a4 fs16 d8. |
        g8. b16 \times 2/3{g8 fs e} fs8. a16 \times 2/3 {fs8 e d} |
        e8. g16 fs e8. d4 \bar"||"\break
        d'8. e16 | fs8. g16 fs8. d16 e4 cs16 e8. |
        d8. e16 d8. b16 cs4 a16 fs8. |
        g8. b16 e8. g,16 fs8. a16 d8. fs,16 |
        \times 2/3 {e8 gs b} e8. d16 cs a8. d e16 |\break
        fs8. g16 fs8. d16 e8. d16 cs e8. |
        d8. e16 d8. b16 cs8. b16 a cs8. |
        b8. g16 \times 2/3 {b8 a g} a8. fs16 \times 2/3 {a8 g fs} |
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

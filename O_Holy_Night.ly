\version "2.18.2"

\header {
  title = "O Holy Night"
  composer = "Adolphe Adam"
}

\layout {
  \context {
    \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  }
}

music = \relative c' {
  \clef treble
  \time 6/8
  r1 * 6/8 		|	% 1
  r1 * 6/8 		|       % 2
  \repeat volta 2 {
    e4. e4 e8 		|       % 3
    g4.~ g4 g8 		|       % 4
    a4 a8 f4 a8 	|       % 5
    c2. 		|       % 6
    g4 g8 e4 d8		|	% 7
    c4. e4 f8		|	% 8
    g4. f4 d8		|	% 9
    c2.~		|	% 10
    c4. r4.		|	% 11
    e4. e4 e8		|	% 12
    g4.~ g4 g8		|	% 13
    a4 a8 f4 a8		|	% 14
    c2.			|	% 15
    g4 g8 fis4 e8	|	% 16
    b'4. g4 a8		|	% 17
    b4. c4 b8		|	% 18
    e,2.~		|	% 19
    e4. r4 g8		|	% 20
    g4. a		|	% 21
    d, g		|	% 22
    a4 g8 c4 e,8	|	% 23
    a4. g4 g8		|	% 24
    g4. a		|	% 25
    d, g		|	% 26
    a4 g8 c4 e,8	|	% 27
    g2.			|	% 28
  }
}

%\score {
  <<
    \new Staff \with {instrumentName = #"Violin "}
    <<
      {
        \music
      }
    >>
    \new Staff \with {instrumentName = #"Trumpet 1"}
    <<
      \transpose c a {
        \music
      }
    >>
  >>
%}


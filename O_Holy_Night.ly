\version "2.18.2"

\header {
  title = "O Holy Night"
  composer = "Adolphe Adam"
  tagline = ""
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
    c2.~		|	% 29
    c4. b4 a8		|	% 30
    b2.~		|	% 31
    b4. b		|	% 32
    d2.~		|	% 33
    d4 a8 a4 a8		|	% 34
    c2.			|	% 35
    c4. r4 c8		|	% 36
    e2. (		|	% 37
    d4.~ d4) g,8  	|	% 38
    c2.~		|	% 39
    c4. b4 a8		|	% 40
    g2.~		|	% 41
    g4 g8 a4 g8		|	% 42
    g2.~		|	% 43
    g4. c		|	% 44
  }
  \alternative {
    {
      d2.~		|	% 45
      d4. r4 g,8	|	% 46
      e'2.~		|	% 47
      e4. d4.		|	% 48
      c2.		|	% 49
      b4. c4 d8		|	% 50
      c2.~		|	% 51
      c4. r4.		|	% 52
    }
    {
      d2.~		|	% 53
      d4. g,4.		|	% 54
      g'2.~		|	% 55
      g4 f8 e4 ( d8)	|	% 56
      c2.		|	% 57
      b4. c4 d8		|	% 58
      c2.~		|	% 59
      c2.~		|	% 60
      c2.~ \fermata	|	% 61
    }
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
        \key d \minor
        \music
      }
    >>
  >>
%}


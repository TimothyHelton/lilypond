\version "2.18.2"

\header {
  title = "The Doxology"
  composer = "Louis Bourgeois"
}

\layout {
  \context {
    \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  }
}

music = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4
  \partial 4 g |
  g fis e d |				% 1
  g a b \fermata b |			% 2
  b b a g |				% 3
  c b a \fermata g |			% 4
  a b a g |				% 5
  e fis g \fermata d' |			% 6
  b g a c |				% 7
  b a g \fermata \bar "|."		% 8
}

harmony = \relative c' {
  \clef treble
  \key g \major
  \time 4/4
  \partial 4 d |
  d d c b |				% 1
  d fis g \fermata g |			% 2
  g g fis e |				% 3
  a g fis \fermata d |			% 4
  fis g fis e |				% 5
  c d d \fermata b' |			% 6
  g d fis a |				% 7
  g fis d \fermata \bar "|."		% 8
}

%\score {
  <<
    \new Staff \with {instrumentName = #"Violin "} <<
      {\music}
    >>
    \new Staff \with {instrumentName = #"Trumpet 1"} <<
      \transpose g a {
        \music
      }
    >>
    \new Staff \with {instrumentName = #"Trumpet 2"} <<
      \transpose g a {
        \harmony
      }
    >>
  >>
%}


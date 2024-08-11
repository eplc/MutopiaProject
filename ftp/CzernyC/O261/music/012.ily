\version "2.24.4"

exercise = "12"
meter = { \tempo 4 = 110 }

rh = \relative f'' {
  \tempo \markup "Allegretto"
  \key f \major
  f4^5( c^2 a^1 c^2 ) |
  f( c a c |
  f ) r <f bes d>^1^3^5 r |
  <f c'>8^4 r <bes, e>^2^5 r <a f'>^1^5 r r4 |
  \bar "|."
}

dynamics = \relative {
  s1\p |
  s |
  \override DynamicTextSpanner.style = #'none
  s\cresc |
  s\! |
}

lh = \relative c {
  \clef bass
  \key f \major
  f16_5 a_3 g f g_4 bes_2 a g a_3 c_1 bes a g_4 bes_2 a g |
  f a g f g bes a g a c bes a g bes a g |
  f g a bes \clef treble c^1 d^3 e f bes,^4 c d e^1 f^3 g a bes^2 |
  c,^5 a'^1 gis a c,^5 g'^1 fis g f8^2 r r4 |
}

\version "2.24.4"

exercise = "9"
meter = { \tempo 4 = 130 }

rh = \relative c'' {
  \tempo \markup "Allegro"
  \time 6/8
  c16^1 e d^2 f e^3 g c, e d f e g |
  f^1 a g^2 b a^3 c f, a g b a c |
  c,16^1 e d^2 f e^3 g g,^1 b a^2 c b^3 d |
  c^1 d e f g e c8 r r |
  \bar "|."
}

dynamics = \relative {
  s2.\f |
  s |
  s |
  s |
}

lh = \relative c' {
  \clef bass
  <c e>8_1_2 r r r4 r8 |
  \set fingeringOrientations = #'(left)
  <f,-5 a-3 c-1> r r r4 r8 |
  <g c-2 e-1> r r <g d'-2 f-1> r r |
  <c-3 e-1> r r r4 r8 |
}

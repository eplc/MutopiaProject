\version "2.24.4"

exercise = "10"
meter = { \tempo 4 = 120 }

rh = \relative c'' {
  \tempo \markup "Allegro moderato"
  \time 6/8
  <e g>8^3^5 r r <c e>^1^3 r r |
  <a' c>^3^5 r r <f a>^1^3 r r |
  <e g>^3^5 r r <g, b>^1^2 r r |
  c^3 r r r4 r8 |
  \bar "|."
}

dynamics = \relative {
  s2.\f |
  s |
  s |
  s |
}

lh = \relative c {
  \clef bass
  c16^5 e d^4 f e^3 g c, e d f e g |
  f^5 a g^4 b a^3 c f, a g b a c |
  \clef treble
  g^5 c^2 e^1 c^2 e^1 c^3 g d'^2 f^1 d^2 f^1 d^3 |
  c^4 e^2 g^1 e g e c8 r r |
}

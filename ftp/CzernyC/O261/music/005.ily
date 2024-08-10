\version "2.24.4"

exercise = "5"
meter = { \tempo 4 = 130 }

rh = \relative c'' {
  \tempo \markup "Allegro"
  c16^1 g' d^2 g e^3 g f^4 g e g f g e g d g |
  c, g' d g e g f g e g f g e g d g |
  e^3 c g^5 c f^4 c e^3 c d^3 g, f'^5 g, e'^4 g, d'^3 g, |
  c^2 d^4 c^3 b^2 c^1 e^3 g e c8 r r4 |
  \bar "|."
}

dynamics = \relative {
  s1\f |
  s |
  s |
  s |
}

lh = \relative c' {
  <c e>8^2^1 r r4 r r8 <g b f'> |
  <c e>^2^1 r r4 r r8 <g b f'> |
  <c e> r r4 <g b f'>8 r r4 |
  <c e>8 r r4 r2 |
}

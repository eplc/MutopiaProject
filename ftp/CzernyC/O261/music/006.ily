\version "2.24.4"

exercise = "6"
meter = { \tempo 4 = 130 }

rh = \relative c' {
  \tempo \markup "Allegro"
  <e g c>8 r r4 r r8 <f g b>^4 |
  <e g c> r r4 r r8 <f g b> |
  <e g c> r r4 r r8 <d f g>^2^4^5 |
  <c e> r r4 r2 |
  \bar "|."
}

dynamics = \relative {
  s1\f |
  s |
  s |
  s |
}

lh = \relative c {
  \clef bass
  \stemDown
  c16_5 g' d_4 g e_3 g f_4 g e g f g e g d g |
  c, g' d g e g f g e g f g e g d g |
  c, g' e^2 g d^3 g c,^4 g' b,^3 g' a,^4 g' b,^3 g' g,^5 g' |
  c,^4 e g e c e g e c8 r r4 |
}

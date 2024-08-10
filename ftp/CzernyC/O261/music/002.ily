\version "2.24.4"

exercise = "2"
meter = { \tempo 4 = 130 }

rh = \relative c'{
  \tempo \markup "Allegro"
  <e g c>4^1^2^5 r r <f g b>^1^2^4 |
  <e g c>4^1^2^5 r r <f g b> |
  <e g c> <f g b > <e g c> <f b g> |
  <e g c>4 r r2 |
  \bar "|."
}

dynamics = \relative {
  r1\f | r1 | r1 | r1 |
}

lh = \relative c {
  \clef bass
  c16-5 d-4 e-3 f-2 g-1 f e f g f e f g f e d |
  c d e f g f e f g f e f g f e d |
  c-5 e-3 g-1 e-3 d-4 g-1 f-2 d-4 c e g e d g f d |
  c-5 d e f g a-3 b c c,8 r r4 |
  \bar "|."
}

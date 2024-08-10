\version "2.24.4"

exercise = "1"
meter = { \tempo 4 = 130 }

rh = \relative c'' {
  c16-1 d-2 e-3 f-4 g-5 f e f g f e f g f e d |
  c d e f g f e f g f e f g f e d |
  c-1 e-3 g-5 e-3 d-2 g-5 f-4 d-2 c e g e d g f d |
  c-1 d e f-1 g a b c c,8 r r4 |
  \bar "|."
}

dynamics = \relative {
  r1\f | r1 | r1 | r1 |
}

lh = \relative c'{
  \tempo \markup "Allegro"
  <c e>4^2^1 r r <g b f'>^5^3^1 |
  <c e>^2^1 r r <g b f'> |
  <c e> <g b f'> <c e> <g b f'> |
  <c e>4 r r2 |
  \bar "|."
}

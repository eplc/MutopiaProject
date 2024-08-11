\version "2.24.4"

exercise = "11"
meter = { \tempo 4 = 130 }

rh = \relative f' {
  \tempo \markup "Allegro"
  \key f \major
  f16^1 a^3 g f g^2 bes^4 a g a^3 c^5 bes a^2 g^4 bes a g |
  f a g f g bes a g a c bes a g f a g |
  f g a bes c^1 d e f e^3 d f e g f e d |
  c c' bes a g bes a g f8 r r4 |
  \bar "|."
}

dynamics = {
  s1\p |
  s |
  \override DynamicTextSpanner.style = #'none
  s\cresc |
  s\! |
}

lh = \relative f {
  \clef bass
  \key f \major
  a4_5( c_3 f_1 c_3) |
  a( c f c |
  a4 ) r \clef treble <bes f'>^4^1 r |
  <c f a>8^2^1 r <c e bes'>^3^1 r <f a> r r4 |
}

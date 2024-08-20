\version "2.24.4"

\include "../lib/helpers.ily"

exercise = "8"
meter = { \tempo 4 = 130 }

rh = \relative c'' {
  \tempo \markup "Allegro"
  \slursUnderStacatissimos
  e8^!^1 f^! g^! f^! e^! f^! g^! f^! |
  e^! r c'16^2( d c d e8^!) r r4 |

  d,8^1^! e^! f^! e^! d^! e^! f^! e^! |
  d^! r d'16^2( e d e f8^!) r r4 |
  e8^!^3 e^! g^! g^! f^! f^! d^! d^! |

  c^!^1 c^!^3 e^! e^! d^!^4 d^! g,^! g^! |
  c^!^4 c^! c^! c^! c4 d16( c a f^1 |
  e8^!^2 ) g^!^4 d^!^1 g^!^5 c,^1 r r4 |
  \bar "|."
}

dynamics = \relative {
  s1_\markup{ \dynamic p \italic "dolce leggiero" } |
  s |
  s |
  s |
  \override DynamicTextSpanner.style = #'none
  s2 s\cresc |
  s1 |
  s2-\< s\sf-\> |
  s1\p |
}

lh = \relative c' {
  c16^5 g' d g e g d g c, g' d g e g d g |
  c, g' e g c, g' e g c, g' e g c, g' e g |

  b,^5 g' c,^4 g' d^3 g c, g' b, g' c, g' d g c, g' |
  b, g' d g b, g' d g b, g' d g b, g' d g |
  c,^5 g' c, g' e^3 g e g d^4 g d g f^2 g f g |

  e g e g c, g' c, g' b,^5 g' b, g' f^2 g f g |
  e^3 g^1 e^4 g^2 e g e g f^3 a^1 f^4 a^2 f a f a |
  g_3 c g c g_2 b g b c,_5 e_3 g e c8 r |
}

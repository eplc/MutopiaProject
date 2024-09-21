\version "2.24.4"

exercise = "25"
meter = { \tempo 4 = 130 }

rh = \relative c' {
  \tempo \markup "Allegro"
  \time 6/8

  <e c'>8 r r r4 r8 |
  <e c'>8 r r r4 r8 |
  <c' e>^1^3 r r <c e> r r |
  <e~ g~>4.^3^5 <e g>8 <d f>^. <c e>^. |

  \break

  <d f> r r <d f> r r |
  <d~ f~>4. <d f>8 <e g>^. <d f>^. |
  <c e> r r <f, g c> r r |
  <e g c> r r r4 r8 |
  
  \bar "|."
}

dynamics = {
  s2.\f |
  s |
  s |
  s |

  s |
  s |
  s |
  s |
}

lh = \relative c {
  \clef bass
  \time 6/8

  c16^5 d e f g a^2 g^1 a^2 g^1 f e d |
  c d e f g a^2 g^1 a^2 g^1 f e d |
  c d e f g e c d e f g e |
  c d e f g e c8 r r |

  g'16^5 b d c b a g b d c b a |
  g b d c b a g8 r r |
  \stemDown c16^1 b^2 c^1 g^2 e^4 c^5 g'^1 fis^2 g^1 d^2 b^4 g^5 |
  \stemNeutral c_1 b_2 c_1 g_2 e_4 g_2 c,8_5 r r |

  \bar "|."
}

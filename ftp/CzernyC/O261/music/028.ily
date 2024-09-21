\version "2.24.4"

exercise = "28"
meter = { \tempo 4 = 130 }

rh = \relative ees' {
  \tempo \markup "Allegro"
  \key ees \major

  ees16^2 g^1 bes^2 ees^4 g^5 ees bes g ees g bes ees g ees bes g |
  aes^2 c^1 ees^2 aes^4 c^5 aes ees c aes c ees aes c aes ees c |

  \break

  bes^2 d^1 f^2 bes^4 d^5 bes f d bes d f bes d bes f d |
  ees^2 g^1 bes^2 ees^4 g^5 ees bes g^1 ees8^2 r r4 |

  \bar "|."
}

dynamics = {
  s4\ff |
  s |

  s |
  s |
}

lh = \relative ees {
  \clef bass
  \key ees \major

  <ees g bes>2_1_3_5 <ees g bes> |
  <ees aes c>2_1_2_5 <ees aes c> |

  <ees aes bes>_1_2_5 <ees aes bes> |
  <ees g bes> <ees g bes>8 r r4 |
  
}

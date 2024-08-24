\version "2.24.4"

exercise = "19"
meter = { \tempo 4 = 130 }


rh = \relative a'' {
  \tempo \markup "Allegro"
  \key d \major
  
  a16^5 gis^4 g^3 fis^2 a gis g fis a gis g fis a gis g fis |
  a gis g fis eis^1 fis^2 g^3 fis^2 a^5 gis g fis eis fis g fis |

  \break
  \autoLineBreaksOff

  g^4 fis^3 f^2 e^1 g fis f e g fis f e g fis f e |
  g fis f e dis^2 e^1 fis^3 e^2 g^4 fis f e dis e^1 fis^3 e^2 |
  fis^3 d^1 cis^2 d^1 dis^3 e^1 eis^2 fis^3 g^1 gis^2 a^3 ais^4 b^1 c^2 cis^3 d^4 |

  \break

  r g,^3 fis^2 g^1 gis^2 a^3 ais^4 b^1 \ottava #1 c^2 cis^3 d^1 dis^3 e^1 f^2 fis^3 g^4 |
  fis^2 g^3 fis^2 eis^1 fis^2 g^3 gis^4 a^5 fis g gis a e^1 g^4 fis e |
  d^1 e fis g^1 a b cis d d,8^! \ottava #0 r r4 |
  \bar "|."
}

dynamics = {
  s1\p |
  s |

  s |
  s |
  s4 s\cresc s2 |

  s1 |
  s\f |
  s |
}

lh = \relative d' {
  \key d \major

  <d fis>4_2_4 ( a'8_1 ) r r2 |
  <d, fis>4 ( a'8 ) r r2 |

  \set fingeringOrientations = #'(left)
  <a,-5 cis-3>4 ( g'8 ) r r2 |
  <a, cis>4 ( g'8 ) r r2 |
  <d fis>4_2_4 ( a'8_1 ) r r2 |

  \clef bass
  <g, b>4_3_5 ( d'8 ) r r2 | 
  \clef treble
  <a d>4^5^2 ( fis'8^1 ) r r4 <a, cis g'>^5^3^1 ( |
  <d fis>8_!^4^2 ) r <fis a>_!^2^1 r <d fis>_! r r4 |
  \bar "|."
}

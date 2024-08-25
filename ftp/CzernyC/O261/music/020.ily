\version "2.24.4"

exercise = "20"
meter = { \tempo 4 = 130 }

rh = \relative c' {
  \tempo \markup "Allegro"
  \key d \major

  r4 <fis a>8^2^3 r <fis a> r <fis a> r |
  \slurUp
  <fis d'>2^>^2^5 ( <fis a>8 ) r r4 |

  \break

  r <b d>8^1^2 r <b d> r <b d> r |
  <b g'>2^>^1^5 ( <b d>8 ) r r4 |
  <d fis>1^1^3

  \break

  <d fis a>4^1^2^4 r <e g a cis> r |
  <fis a d>8 r r4 <fis, a d>8 r r4 |
  r1 |
  \bar "|."
}

dynamics = {
  s1\p |
  s |
  s\cresc |
  s |
  s\f |
  s |
  s |
  s |
}

lh = \relative c {
  \clef bass
  d16^4 e fis g^1 fis^4 g gis a^1 d, e fis g fis g gis a |
  d, e fis g fis g gis a d, e fis g fis g gis a |

  g^4 a b c^1 b c cis d^1 g, a b c b c cis d |
  g, a b c b c cis d g, a b c b c cis d |
  r \clef treble a_5 b cis d e fis_3 g a_1 gis_2 g_3 fis_4 a gis g fis |

  a gis g fis a gis g fis a g fis e a g fis e |
  d a' g fis e_1 d cis b_4 \clef bass a_5 d_1 cis b_3 a_1 g fis e |
  d e fis g a b_3 cis d d,8 r r4 |
  \bar "|."
}

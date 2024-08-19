\version "2.24.4"

exercise = "16"
meter = { \tempo 4 = 130 }

rh = \relative g' {
  \tempo \markup "Alegretto"
  \key g \major
  \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  g32^1 d' a^2 d b^3 d c^4 d b d c d b d a d |
  g, d' a d b d c d b d c d b d a d |
  g,^1 b^2 d^3 g^5 fis^4 g fis g d^1 fis^2 a^3 d^5 cis^4 d c^4 d |
  b d c^3 b a c b a g8 r |
}

dynamics = \relative {
  s2\f |
  s |
  s |
  s |
}

lh = \relative c {
  \clef bass
  \key g \major
  \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  g'32_5 d' a_4 d b_3 d c_2 d b d c d b d a d |
  g, d' a d b d c d b d c d b d a d |
  \clef treble
  g,_5 b_4 d_2 g_1 f_2 g f g d_5 f_3 a_2 d_1 cis^2 d c^2 d |
  b^3 d c b \stemDown a^4 c^1 b a g8 r |
  
}

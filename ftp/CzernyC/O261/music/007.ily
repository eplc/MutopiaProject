\version "2.24.4"

\include "../lib/helpers.ily"

exercise = "7"
meter = { \tempo 8 = 130 }

% Custom slur shapes
bThreeSlurOne = \shape #'((0 . 0) (0 . 1) (-1 . 2) (-0.5 . 1)) Slur
bThreeSlurTwo = \shape #'((0 . 0) (0 . 1) (0 . 2) (-0.5 . 2)) Slur
bFourSlur = \shape #'((0 . 0) (0 . 0) (0 . 3) (0 . 0)) Slur

rh = \relative c'' {
  \tempo \markup "Allegretto vivace"
  \time 2/4
  \stemDown
  \override Slur.positions = #'(0 . -1)
  \customScripts #staccatissimo-padding
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 8)

  c32^2( g d'^3 g,  e'16\noBeam^!^4) r e32^3( c f^4 c g'16\noBeam^!^5) r |
  c,32( g d' g, e'16\noBeam^!) r e32( c f c g'16\noBeam^!) r |
  \bThreeSlurOne f32^4( g e g d16\noBeam^!) r \bThreeSlurTwo e32^3( g d g c,16\noBeam^!) r |
  \bFourSlur d32^2( g^5 d g \fingeringInsideSlur b,^1 d^4 b^2 d \stemUp g,16^1_![ ) g_! g_! g_! ] |

  \stemDown
  c32^2( g d' g, e'16\noBeam^!) r e32^3( c f c g'16\noBeam^!) r |
  \ottava #1
  c32^2( g d' g, e'16\noBeam^!) r e32^3( c f c g'16\noBeam^!) r |
  a32^5 a, a' g f e d^1 c^4 \ottava #0 b a g^1 f^4 e d c^1 b^2 |
  c^1 d e f^1 g a b c c,16 r r8 |
  \bar "|."

  \revert Slur.positions
  \revertCustomScripts
}

dynamics = \relative {
  s2_\markup{ \dynamic p \italic "leggiermente" } |
  s |
  s |
  s |
  s4 s\cresc |
  s2 |
  s\f |
  s |
}

lh = \relative c {
  \clef bass
  \time 2/4
  c16_4[ r <e g>_1_2 ] r c[ r <e g>] r |
  c[ r <e g>] r c[ r <e g>] r |
  b^5[ r <d g>^3^1] r c^5[ r <e g>^4^2] r |
  <g b>8_1_2 r r4 |

  c,16[ r <e g>] r c[ r <e g>] r |
  c[ r <e g>] r c[ r <e g>] r |
  <f a d>8_1_3_4 r <g c e>_5 r |
  <c e>16_1_3 r <c e> r <c e> r r8 |
}

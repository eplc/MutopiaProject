\version "2.24.4"

exercise = "24"
meter = { \tempo 4 = 55 }

% Custom slur shapes
bOneSlurOne = \shape #'((-1 . 0.5) (0 . 2) (0 . 1) (0 . 0)) Slur

rh = \relative c'' {
  \tempo \markup "Allegretto"
  \time 2/4

  \override TupletBracket.tuplet-slur = ##t
  \override TupletBracket.direction = #UP
  \override TupletBracket.bracket-visibility = ##t

  \set Staff.beamExceptions = #'()
  \set Staff.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = 1,1,1,1

  \stemDown

  \tuplet 3/2 {
    \bOneSlurOne <c e>16^2^4 ( <d f> <c e> 
  }

  \tuplet 3/2 {
    <b d> <c e> <d f>
  }

  \override TupletBracket.tuplet-slur = ##f
  \omit TupletNumber
  \omit TupletBracket

  \tuplet 3/2  {
    <c e> <d f> <c e> <b d> <c e> <d f> ) |
  }

  \tuplet 3/2 {
    <c e> ( <d f> <c e> <b d> <c e> <d f>^1^3 <e g>^2^4 <f a> <e g> ) <e g> ( <d f> <c e> ) |
    <f a>^2^4 ( <g b> <f a> ) <f a>^3^5 ( <e g> <d f> ) <d f>^3^5 ( <c e> <b d> ) <b d>^5^3 ( <a c> <g b> ) |
    c^4 ( g^1 e'^4 c^2 g'^5 e^3
  }

  c8^1 ) r |
  \bar "|."
}

dynamics = {
  s2\f |
  s |
  s |
  s |
}

lh = \relative c' {
  \clef bass
  \time 2/4

  c16_1 r g_4 r c r g r |
  c r r8 c16 r r8 |
  <f, a d>16 r r8 <g d' f>16 r r8 |
  <c e>16 r <c e> r <c e>8 r |
}

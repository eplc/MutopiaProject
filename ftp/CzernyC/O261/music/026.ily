\version "2.24.4"

exercise = "26"
meter = { \tempo 4 = 130 }

\include "../lib/helpers.ily"

bOneSlurOne = \shape #'((0 . -1) (-0.5 . 2.5) (0 . 0.5) (0 . 0)) Slur
bTwoSlurOne = \shape #'((0 . -1) (0 . 1.5) (0 . 0.5) (0 . -1)) Slur
bFourSlurOne = \shape #'((0 . -2) (0 . 2) (0 . 1) (0 . -2)) Slur

lhSlurOne = \shape #'((0 . 0.5) (-1.5 . -2.5) (0 . -1) (0 . 0)) Slur

rh = \relative c'' {
  \tempo \markup "Moderato"
  
  \override TupletBracket.direction = #UP
  \override TupletBracket.bracket-visibility = ##f

  \set Staff.beamExceptions = #'()
  \set Staff.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = 1,1,1,1

  \stemDown

  \tuplet 3/2 {
    \set fingeringOrientations = #'(left)
    \bOneSlurOne
    <c-2 e-4>8 ( <d f> <c e>
  }

  \tuplet 3/2 {
    <b d> <c e> <d f>
  }

  \omit TupletNumber
  \omit TupletBracket

  \tuplet 3/2  {
    <c e> <d f> <c e> <b d> <c e> <d f> ) |
    \bTwoSlurOne <c e> ( <d f> <c e> <b d> <c e> \fingeringInsideSlur <d f>^1^3 <e g> <f a> <e g> ) <e g>^3^5 ( <d f> <c e> ) |
    <f a>^2^4 ( <g b> <f a> ) <f a>^3^5 ( <e g> <d f> ) <d f>^3^5 ( <c e> <b d> ) <b d>^5^3 ( <a c> <g b> ) |
    \bFourSlurOne c^4 ( \fingeringInsideSlur g^1 e'^4 c^2 \fingeringInsideSlur g'^5 e^3 
  }

  c4^1 ) r |

  \bar "|."
}

dynamics = {
  s1\p |
  s |
  s |
  s |
}

lh = \relative c' {
  \clef treble
  
  \override TupletBracket.direction = #DOWN
  \override TupletBracket.bracket-visibility = ##f

  \set Staff.beamExceptions = #'()
  \set Staff.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = 1,1,1,1

  \stemUp

  \tuplet 3/2 {
    \lhSlurOne <c e>8^4^2 ( <d f> <c e>
  }

  \tuplet 3/2 {
    <b d> <c e> <d f>
  }

  \omit TupletNumber
  \omit TupletBracket

  \tuplet 3/2  {
    <c e> <d f> <c e> <b d> <c e> <d f> ) |
    <c e> ( <d f> <c e> <b d> <c e> <d f> <e g>^4^2 <f a> <e g> ) <e g>^3^1 ( <d f> <c e> ) |
    <f a>^4^2 ( <g b> <f a> ) <f a>^3^1 ( <e g> <d f> ) <d f>^3^1 ( <c e> <b d> ) <b d>^3^1 ( <a c> <g b> ) |
  }

  <c e>^2^1 r <c e> r <c e>4 r 

  \bar "|."
}

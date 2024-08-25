\version "2.24.4"

exercise = "21"
meter = { \tempo 8 = 130 }

rh = \relative g' {
  \tempo \markup "Allegro"
  \key g \major
  \time 2/4

  \override TupletBracket.tuplet-slur = ##t
  \override TupletBracket.bracket-visibility = ##t

  \set Staff.beamExceptions = #'()
  \set Staff.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = 1,1,1,1

  \stemDown

  \tuplet 3/2 {
    g16^1 b^3 b^2
  }

  \tuplet 3/2 {
    d^5 b^3 b^2
  }

  \override TupletBracket.tuplet-slur = ##f
  \omit TupletNumber
  \omit TupletBracket

  \tuplet 3/2  {
    g b b d b b |
  }

  \tuplet 3/2 {
    g^1 c^3 c^2 e^5 c^3 c^2 g c c e c c |
    a^1 cis^3 cis^2 e^5 cis^3 cis^2 a cis cis e cis cis |
    a^1 d^3 d^2 fis^5 d^3 d^2 a d d fis d d |

    \break

    d^1 fis^3 fis^2 a^5 fis^3 fis^2 d fis fis a fis fis |
    d^1 g^3 g^2 b^5 g^3 g^2 c,^1 e^3 e^2 a^5 e^3 e^2 |
    b^1 d^3 d^2 g^5 d^3 d^2 a^1 d^3 d^2 fis^5 d^3 d^2 |
    b^1 d^3 b^2 g'^5 d^3 b^2 
  }

  \stemNeutral
  g8^1 r |
  \bar "|."
}

dynamics = {
  s2_\markup { \dynamic p \italic "leggiermente" } |
  s |
  s |
  s |
  s |
  s |
  s |
  s |
}

lh = \relative g {
  \clef bass
  \key g \major
  \time 2/4

  <g b d>8_5 r <g b d> r |
  <c e>_1_2 r r4 |
  <a cis e>8 r <a cis e> r |
  <d fis>_1_2 r r4

  \clef treble
  <d a' c>8 r <d a' c> r |
  <g b>_1_3 r <c, e>_2_4 r |
  d_1 r \clef bass d,^5 r |
  g^2 r r4 |
}

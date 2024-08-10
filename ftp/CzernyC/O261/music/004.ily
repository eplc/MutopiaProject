\version "2.24.4"

exercise = "4"
meter = { \tempo 4 = 130 }

rh = \relative c' {
  \tempo \markup "Allegro"
  \time 6/8
  <e g c>8^1^2^5 <e g c> <e g c> <e g c> <e g c> <e g c> |
  <e g c> c'-3\staccatissimo c\staccatissimo \slashedGrace d( c\staccatissimo ) b\staccatissimo  c\staccatissimo |
  <g b d>^1^2^4 <g b d> <g b d> <g b d> <g b d> <g b d> |
  <g b d> d'-3\staccatissimo d\staccatissimo \slashedGrace e( d\staccatissimo ) c\staccatissimo  d\staccatissimo |

  <g, c e>^\staccatissimo^1^3^5 <g c e>\staccatissimo <g c e>\staccatissimo <a c e>\staccatissimo <a c e>\staccatissimo <a c e>\staccatissimo |
  <a d>^\staccatissimo^1^4 <a d>^\staccatissimo <a d>^\staccatissimo <a d f>4.^1^3^5( |
  <c e>16^2^4 ) g'^5 f e d c^1 b^4 a g f^1 e^3 d |
  c^1 c'^5 b c g^3 e^2 c8 r r |
  \bar "|."
}

dynamics = \relative {
  s2.\f |
  s\p |
  s\f |
  s\p |

  s\f |
  s4. s\sf |
  s2. |
  s2.
}

lh = <<
  \new Voice {
    \relative c {
      \clef bass
      c16_5( d e f g f e f g f e d |
      c8 ) <c' e>^\staccatissimo_1_2 <c e>^\staccatissimo <c e>^\staccatissimo <c e>^\staccatissimo <c e>^\staccatissimo |
      g16_5( a b c d c b c d c b a |
      g8 ) <g b f'>^\staccatissimo_1_3_5 <g b f'>^\staccatissimo <g b f'>^\staccatissimo <g b f'>^\staccatissimo <g b f'>^\staccatissimo

      c16_3( d e d c8^\staccatissimo ) a16_3( b c b a8^\staccatissimo ) |
      f16_3( g a g f8^\staccatissimo ) d16( a' g f e d |
      g4.^1 ) <g, b f'>^5^3^1 |
      \voiceOne e'4^4^2( g8 ) e \oneVoice r r |
    }
  }

  \new Voice {
    \relative c {
      s2. |
      s |
      s |
      s |

      s |
      s |
      s |
      \voiceTwo c4. c8 s s |
    }
  }
>>

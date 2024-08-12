\version "2.24.4"

exercise = "13"
meter = { \tempo 4 = 110 }

rh = \relative a'' {
  \tempo \markup "Allegretto con anima"
  \key f \major
  \time 3/4
  a4^!^3 a^! a16( c bes a |
  g4^!^2 ) g^! g16( bes a g |
  f4^!^1 ) f^!^2 f16( e f a |
  g2.^3_> ) |

  bes4^!^3 bes^! bes16( d c bes |
  a4^!^2 ) a^! a16( c bes a |
  g4^! ) g^! g16^3( fis^2 g^1 bes^4 |
  a2.^3^> ) |

  a,16^1 c^3 bes a bes d c bes c^1 ees^3 d c |
  d f e d e^1 g^3 f e f a g f |
  g^1 bes^3 a g a c bes a^1 bes^2 d c bes |

  \ottava #1
  c d c b c^1 a'^5 g f e f g f |
  e8.( d16^1 g8.^>^5 f16 e d c bes^3 |
  \ottava #0
  a4^!^2 ) a^! \slashedGrace c8^4 bes16^3( a bes g |
  f4^2 ) <a, f'>^1^5 <a f'> |
  <a f'>2 r4 |
  \bar "|."
}

dynamics = {
  s2._\markup { \dynamic p \italic "dolce" } |
  s |
  s |
  s |
  s |
  s |
  s |
  s |
  \override DynamicTextSpanner.style = #'none
  s\cresc |
  s |
  s_\< |
  s\f\> |
  s\! |
  s |
  s |
  s |
}

lh = <<
  \new Voice {
    \relative f {
      \voiceOne
      \clef bass
      \key f \major
      \time 3/4
      f8_5_\markup{ \italic "legato" } a_3 c a c a |
      e_5 bes' c bes c bes |
      f_4 a_2 c a c a |
      c,_5 e_3 g e g e |

      c e g e g e |
      c f a f a f |
      e_5 g_3 c g c g |
      f_5 a_3 c a c a |

      c4^2 d^1 a^3 |
      bes^2 g^4 a^3 |
      \oneVoice
      <e c'>^1_5 <f c'>_4 <g c>_3 |

      \clef treble
      <a c f>2._5^3^1 |
      \voiceOne
      bes8 f' d f d f |
      c^5 a'^1 f a e^5^3 bes' |
      a4^2^1 \clef bass \oneVoice <f, c'>_1_5 <f c'> |
      <f c'>2 r4 |
    }
  }
  
  \new Voice {
    \relative f {
      \voiceTwo
      \clef bass
      \key f \major
      \time 3/4
      f2. |
      e |
      f |
      c |

      c |
      c |
      e |
      f |

      f_5~ |
      f |
      s |

      s |
      bes |
      c2 c4 |
      f4 s2 |
      s2. |
    }
  }
>>
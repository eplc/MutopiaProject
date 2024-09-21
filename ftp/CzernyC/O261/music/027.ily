\version "2.24.4"

\include "../lib/helpers.ily"

exercise = "27"
meter = { \tempo 4 = 130 }

rh = \relative c' {
  \tempo \markup "Allegro moderato"
  \key ees \major

  ees8^2 ( f16^1 g aes bes \fingeringInsideSlur c^1 d ees \fingeringInsideSlur f^1 g aes bes \fingeringInsideSlur c^1 d ees |
  d8^.^2 ) d^. d16 ( ees f ees d2 ) |

  \break

  aes'8^>^3 ( g16 f \fingeringInsideSlur ees^3 d c bes^4 aes g f ees^3 d c bes^3 aes |
  g8_.^1 ) g_. g16 ( aes bes aes g2 ) |
  bes^>^2 ees^>^4 |

  \break

  r16 c^1 ( d ees \fingeringInsideSlur f^1 g aes bes \fingeringInsideSlur c^1 d ees d f^> ees d c |
  bes8^4 ) c16 ( bes aes g f \fingeringInsideSlur ees^2 d8^1 ) bes'16^4 ( aes g f \fingeringInsideSlur ees^3 d |
  ees8 ) bes16^1 ( g'^5 ees8 ) bes16 ( g' ees4 ) r |

  \bar "|."
}

dynamics = {
  s1_\p |
  s |

  s |
  s |
  s_\f |

  s |
  s_\markup{ \italic "dimin." } |
  s_\markup{ \italic "legg." } |
}

lh = \relative c {
  \clef bass
  \key ees \major

  <<
    \new Voice <<
      \relative ees {
        \voiceOne ees8_4 bes'_1 g_2 bes ees, bes' g bes |
        f_3 bes aes bes f bes aes bes |

        d,_5 bes'_1 f_3 bes d, bes' f bes |
        ees,_4 bes' g bes ees, bes' g bes |
        \oneVoice
        r16 g,_5 ( aes bes c d \fingeringInsideSlur ees^3 f g \fingeringInsideSlur aes^4 bes c \clef treble d ees^4 f g |

        aes2_>^1 ) aes,_>^5 |
        <bes ees g>4_4 r <bes f' aes>_5 r |
        <ees g>_3 <ees g> <ees g> r |
      }
    >>

    \new Voice <<
      \relative ees {
        \voiceTwo ees2 ees |
        f f |

        d d |
        ees ees |
      }
    >>
  >>
  
}

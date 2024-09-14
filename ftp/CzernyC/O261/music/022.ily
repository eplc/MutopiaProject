\version "2.24.4"

\include "../lib/helpers.ily"

exercise = "22"
meter = { \tempo 4 = 130 }

rh = \relative d''' {
  \tempo \markup "Allegretto"
  \key g \major
  \time 2/4
  \slursUnderStacatissimos

  \repeat volta 2 {
    d8^!^2 [ r16 d^!^3 ] d8^!^2 [ r16 d^!^3 ] |
    d8^!^2 [ r16 d^!^3 ] d8^!^2 [ r16 d^!^3 ] |
    d8.^2 ( g16^5 b,8^!^1 ) [ r16 b^!^3 ] |
    b8^!^2 [ r16 b^!^3] b8^!^2 [ r16 b^!^3] |
    d8.^5 ( c16^4 a8^!^2 ) [ r16 a16^!^3 ] |

    \break

    a8^!^2 [ r16 a^!^3 ] a8^!^2 [ r16 a^!^2 ] |
    d8.^5 ( b16^3 g8^!^1 ) [ r16 g^!^3 ] |
    g8^!^2 [ r16 d^1 ] ( g8.^2 \fingeringInsideSlur b16^4 |
    d8^!^5 ) [ r16 d^!^3 ] d8^!^2 [ r16 d^!^3 ] |
    d8^!^2 [ r16 d^!^3 ] d8^!^2 [ r16 d^!^3 ] |

    \break

    d8.^2 ( g16^5 b,8^!^1 ) [ r16 b^!^3 ] |
    b8^!^2 [ r16 b^!^3] b8^!^2 [ r16 b^!^2] |
    a8^!^1 [ r16 d^!^3 ] d8^!^2 [ r16 fis^!^4 ] |
    e8.^3 ( [ d16^1 cis8.^2 e16^4 ] ) |
    d8.^3 ( [ a16^1 fis8.^2 \fingeringInsideSlur a16^4 ] |
    d,8 ) r r4 |
  }

  \break

  \repeat volta 2 {
    d8^!^2 [ r16 d^!^3 ] d8^!^2 [ r16 d^!^2 ] |
    d8.^1 ( [ c'16 b8. a16 ] |
    g16 ) d^1 e fis g^1 a b c |
    d8^! [ r16 d,^!^3 ] d8^!^2 [ r16 d^!^3 ] |
    d8^!^2 [ r16 d^!^3 ] d8^!^2 [ r16 d^!^2 ] |
    d8.^1 ( [ c'16 b8. a16 ] |

    \break

    g ) d^1 e fis g^1 a b c |
    d8^! [ r16 d,^!^3 ] \stemDown d8^!^2 [ r16 d^!^3 ] | 
    d8^!^2 [ r16 b'^3 ] ( \stemNeutral c b a b |
    d,8^!^1 ) [ r16 c'^3 ] ( d c b c | 
    d8^!^4 ) [ r16 g,^3 ] ( a g fis g^1 |
  
    \break
  
    e'8^!^5 ) [ r16 \ottava #1 g^3 ] ( a g fis g |
    d8^!^1 ) [ r16 b'16^2 ] ( c b a b ) |
    d8.^4 ( [ \fingeringInsideSlur c16^3 \fingeringInsideSlur a8.^1 fis16^2 ] ) |
    g8.^3 ( \fingeringInsideSlur d16^1 \fingeringInsideSlur b8.^2 \fingeringInsideSlur d16^4 |
    g,8^1 ) \ottava #0 r r4 |
  }
}

dynamics = {
  \repeat volta 2 {
    s2_\markup{ \italic "dolce" } |
    s |
    s |
    s |
    s |

    s |
    s |
    s |
    s |
    s |

    s |
    s |
    \once \override DynamicTextSpanner.style = #'none
    s_\cresc |
    s |
    s\f |
    s |
  }

  \repeat volta 2 {
    s\p |
    s |
    s |
    s |
    s |
    s |

    s |
    s |
    s4 s\cresc |
    s2 |
    s |

    s |
    s8. f16\f s4 |
    s2 |
    s |
    s |
  }
}

lh = {
  \clef bass
  \key g \major
  \time 2/4

  \repeat volta 2 {
    <<
      \new Voice <<
        \voiceOne
        \relative b {
          b4 d |
          c d |
          b d |
          b d |
          fis, c' |

          fis, c' |
          b d |
          b d |
          b d |
          c d |

          b d |
          b d |
          \clef treble
          d^5^2 fis^1 |
          e g |
          fis^4^2 a |
          fis8 \oneVoice r r4 |
        }
      >>

      \new Voice <<
        \voiceTwo
        \relative g {
          g2_3_5 |
          fis_2_5 |
          g |
          g |
          d_3_5 |

          d |
          g_2_4 |
          g_3_5 |
          g |
          fis |

          g |
          g |
          \clef treble
          a |
          a |
          d |
          d8 s s4 |
        }
      >>
    >>
  }

  \repeat volta 2 {
    <<
      \new Voice <<
        \relative a' {
          \voiceOne
          a4^2 c |
          a c |
          b2^2^1 |
          b |
          a4^2 c |
          a c |

          b2^2^1 |
          b |
          b4 \oneVoice r |
          <a c>^2^4 r |
          <b d>^1^3 r |

          <c e>^2^1 r |
          <d, g b>^3^1 r |
          <d a' c> r |
          <g b>^4^2 <g d'> |
          <g b>8 r r4 |
        }
      >>

      \new Voice <<
        \relative d' {
          \voiceTwo
          d2 |
          d |
          g4 d |
          g d |
          d2 |
          d |

          g4 d |
          g d |
          g4 s |
        }
      >>
    >>
  }
}

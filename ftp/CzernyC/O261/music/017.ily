\version "2.24.4"

\include "../lib/helpers.ily"

customGrace = {
  \shape #'((0 . 2) (0 . 2.5) (-0.2 . 3) (-0.6 . 3.2)) Slur
}

exercise = "17"
meter = { \tempo 4 = 110 }

rh = \relative b'' {
  \tempo \markup "Allegro moderato"
  \time 2/4
  \key g \major
  \slursUnderStacatissimos

  \repeat volta 2 {
    b8^!^1 b^! c^!^2 c^! |
    e16^4 ( d cis d b4 ) |
    a8^!^1 a^! b^!^2 b^! |
    d16^4 ( c b c a4 ) |
    b8^!^3 b^! c16^4 ( b a g |

    fis8^!^3 ) fis^! g16^4 ( fis e d |
    g8^! ) g^!^3 \customGrace \acciaccatura a g16 fis g^1 a^4 |
    a4^3 ( g ) |
    b8^!^1 b^! c^!^2 c^! |
    e16^4 ( d cis d b4 ) |

    a8^!^1 a^! b^!^2 b^! |
    d16^4 ( c b c a4 ) |
    b8^!^3 b^! c16^4 ( b a g |
    fis^4 e d c b^2 a c e^5 |
    d8^!^4 ) b^!^2 c^!^4 a^!^2 |
    \stemUp g16^1 b d b g8 r |
  }
  
  \break
  
  \repeat volta 2 {
    a16^3 d, a' d, b'^4 d, b' d, |
    c'^5 d, c' d, \stemDown d'^5 c b a |
    b^3 g b^2 g c^3 g c g |
    d'^4 g, d' g, e'^5 d c b |
    cis^3 a d^4 a e'^5 a, fis'^4 a, |

    g'^5 ( a, e'^4 a, d a cis a |
    d ) e d cis d^1 d'^5 c b |
    a g fis^4 e d e c^1 d^3 |
    b8^!^1 b^! c^!^2 c^! |
    e16^4 ( d cis d b4 ) |

    \stemNeutral
    a8^1_! a_! b^2_! b_! |
    d16^4 ( c b c a4 ) |
    b16^1 ( c d e^1 fis g a b^5 |
    e,^1 fis g a^1 b c d e^5 |
    d8^!^4 ) b^! c^! a^!^1 |
    g16^2 d^1 d'^5 b^4 g8^2 r |
  }
}

dynamics = {
  \repeat volta 2 {
    s2\p |
    s |
    s |
    s |
    s |

    s |
    s |
    s4_\> s_\! |
    s2 |
    s |

    s |
    s |
    s |
    s |
    s |
    s |
  }

  \repeat volta 2 {
    s2\p |
    s |
    s |
    s |
    s_\cresc |

    s |
    s4_\f s_\dim |
    s2 |
    s_\p |
    s |

    s |
    s |
    s4 s_\cresc |
    s2 |
    s_\f |
    s |
  }
  
}

lh = \relative g {
  \clef bass
  \key g \major
  \time 2/4

  \repeat volta 2 {
    g16_5 d' g, d' a_4 d a d |
    b_3 d b_2 d g,_4 d' g, d' |
    fis,_5 d' fis, d' g,_4 d' g, d' |
    a_3 d a d fis,_5 d' fis, d' |
    g,_4 d' g,_5 d' g, d' b d |

    a_4 d a d a d c d |
    b d b d b_2 d_1 g,_4 d' |
    d,_5 b'_1 g_2 b d, a' fis a |
    g_5 g' g, d' a_4 d a d |
    b_3 d b_2 d g_4 d g d |

    fis,_5 d' fis, d' g,_4 d' g, d' |
    a_3 d a d fis,_5 d' fis, d' |
    g,_4 d' b d g, d' b d |
    c,_5 a' e a c, a' e a |
    d,_5 b' g_2 b d, c' fis,_3 c' |
    <g b>8_2_4 d' <g, b> r |
  }

  \repeat volta 2 {
    <d fis>8^!^5^3 <d fis>^! <d g>^! <d g>^! |
    <d a'>^! <d a'>^! <d fis>4 |
    g8^!_3 g^! a^! a^! |
    b^! b^! <g b>4_2_4 |
    \clef treble
    <a g'>8_!^5^1 <a fis'>_!^2 <a e'>_!^1 <a d>_!^2 |

    <a cis>_!^5^3 <a e'>_!^1 <a fis'>_!^2 <a g'>_!^1 |
    <d fis>2^4^2 |
    r |
    \clef bass
    g,,16_5 d' g, d' a_4 d a d |
    b_3 d b_2 d g,_4 d' g, d' |

    fis,_5 d' fis, d' g,_4 d' g, d' |
    a_3 d a d fis,_5 d' fis, d' |
    g,_5 d' b d g, d' b d |
    c^5 g' e g c, g' e g |
    d^5 b'^1 g^2 b d, c' fis,^3 c' |
    <g b>8^2_4 d' <g, b> r |
  }
}

\version "2.24.4"

exercise = "23"
meter = { \tempo 4 = 130 }

rh = \relative c'' {
  \tempo \markup "Allegro"

  c8 r c r c r c r |
  c2 r8 <e g>^3^5 ( <d f> <c e> |
  <d f> ) r <d f> r <d f> r <d f> r |
  <d f>2 r8 <f a>^3^5 ( <e g> <d f> |

  \break

  <c e>4^1^2 ) r r8 <e g>^2^4 ( <d f>^1^3 <c e>^1^2 |
  <f a>4^3^5 ) r r8 <a c>^3^5 ( <g b> <f a> ) |
  r <e g>^3^5 ( <d f> <c e> ) r <d f>^3^5 ( <c e> <b d> ) |
  c^2 ( e^1 g e c4 ) r |

  \bar "|."
}

dynamics = {
  s1\p |
  s |
  s |
  s |

  s |
  s |
  s |
  s |
}

lh = \relative c' {
  \clef treble
  <c e>8^5^3 ( <d f> <e g> <d f> <c e> <d f> <e g> <d f> | 
  <c e> <d f> <e g> <d f> <c e> ) r r4
  \clef bass
  <g b>8_3_5 ( <a c> <b d> <a c> <g b> <a c> <b d> <a c> |
  <g b> <a c> <b d> <a c> <g b> ) r r4 |

  \clef treble
  <c e>8^5^3 ( <d f> <e g> <d f> <c e> ) r r4 |
  \clef bass
  <g b>8^5^3 <a c> <b d> <a c> <g b> ) r r4 |
  \clef treble
  <g c e> r <g d' f> r |
  <<
    \new Voice {
      \voiceOne e'^4^2 ( g e ) \oneVoice r |
    }
    \new Voice {
      \voiceTwo c2 c4 s |
    }
  >>
}

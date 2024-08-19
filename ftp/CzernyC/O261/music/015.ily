\version "2.24.4"

exercise = "15"
meter = { \tempo 4 = 120 }

rh = \relative c'' {
  \tempo \markup "Allegretto"
  \key bes \major
  \time 3/4
  r4 <d f>8^1^4( <ees g>^2^5 <d f> <ees g> |
  <d f>4^! ) <bes d>^!^2^4 <bes d>^! |
  r <c ees>8^1^3( <d f>^2^5 <c ees> <d f> |
  <c ees>4^! ) <a c>^!^2^4 <a c>^! |
  r <bes d>^!^1^3 <bes d>^! |
  <d f>4.^1^5 <c ees>8^2^4 <bes d>4^1^3 |
  <bes d>^2^4( <a c> ) <a c>^! |
  <a c>2. |

  r4 <d f>8^1^4( <ees g>^2^5 <d f> <ees g> |
  <d f>4^! ) <bes d>^!^2^4 <bes d>^! |
  r4 <g' bes>8^1^3( <a c>^2^5 <g bes> <a c> |
  <g bes>4^! ) <f a>^!^1^4 <ees g>^!^3^5 |
  <d f>4^1^3( <ees g>8 <d f> <c ees> <bes d>^2^4 ) |
  <c ees>4^1^3( <d f>8 <c ees> <bes d>^2^4 <a c> |
  <bes d>4^! ) <d, f bes>_!^1^2^5 <d f bes>_! |
  <d f bes>2. |
  \bar "|."
}

dynamics = \relative {
  s2._\markup { \dynamic p \italic "dolce" } |
}

lh = {
  \key bes \major
  \time 3/4
  <<
    \new Voice {
      \relative f' {
        \voiceOne
        r4 f^1 f^1 |
        r f f |
        \oneVoice
        f, f' f |
        f, f' f |
        \voiceOne
        r f f |
        r f f |
        \oneVoice
        f, f' f |
        s2. |

        \voiceOne
        r4 f^1 f^1 |
        r f f |
        \oneVoice
        \clef bass
        ees, ees' ees |
        ees, ees' ees |
        f, f' f |
        f, f' f |
        bes,^!_3 f^!_1 d^!_2 |
        bes2._4 |
      }
    }

    \new Voice {
      \relative bes {
        \voiceTwo
        bes2. |
        bes |
        s |
        s |
        bes |
        bes |
        s |
        \oneVoice f'4^1_( ees^2 c^4 |

        \voiceTwo bes2._5 ) |
        bes_3 |
        s |
        s |
        s |
        s |
        s |
      }
    }
  >>

}

\version "2.24.4"

exercise = "14"
meter = { \tempo 4 = 120 }

rh = \relative c'' {
  \tempo \markup "Allegro moderato"
  \key bes \major
  r8 <d f>^1^4( <ees g>^2^5 <d f> <ees g> <d f> <ees g> <d f> ) |
  r <d bes'>^1^4( <f c'>^2^5 <d bes'> <f c'> <d bes'> <f c'> <d bes'> ) |
  r <f c'>^1^4( <a d>^2^5 <f c'> <a d> <f c'> <a d> <f c'> ) |
  r <c' ees>^1^3( <d f>^2^5 <c ees> <d f> <c ees> <d f> <c ees> ) |

  r <bes d>^!^2^4 <c ees>^!^3^5 <bes d>^! r <g c>^!^1^3 <c ees>^!^3^5 <g c>^! |
  r <f bes>^!^1^3 <bes d>^!^3^5 <f bes>^! r <f a>^!^1^2 <a c>^!^2^4 <f a>^! |
  r <f bes>^!^1^3 <bes d>^! <f bes>^! r <bes, d>^!^2^4 <d f>^!^3^5 <bes d>^! |
  <d, f bes>4^1^2^5 r r2 |
  \bar "|."
}

dynamics = \relative {
  s1\p |
  s |
  \once \override DynamicTextSpanner.style = #'none
  s\cresc |
  s\f |

  s2 s\p |
  s1 |
  s |
  s |
}

lh = \relative b {
  \key bes \major
  <bes f'>1_4 |
  <bes f'> |
  <f' a>_1_2 |
  <a, f'>^1 |

  <bes f'>4 r \clef bass <ees, g c>_5 r |
  <f bes d> r <f c' ees> r |
  <bes d> r bes^1 r |
  bes, r r2 |
}

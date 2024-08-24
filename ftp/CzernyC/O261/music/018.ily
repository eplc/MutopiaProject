\version "2.24.4"

exercise = "18"
meter = { \tempo 4 = 130 }

rh = \relative c' {
  \tempo \markup "Allegro vivo"
  \key d \major
  \time 3/4
  
  <d fis a>8_!^1^2^4 <d g b>_!^1^3^5 <d fis a>_! <d g b>_! <d fis a>_! <d g b>_! |
  <d fis a>_! <d g b>_! <d fis a>_! <d g b>_! <d fis a>_! <d g b>_! |
  <d fis a>_!\noBeam <a' d fis>^!^1^3^5 <a d fis>^! <a d fis>^! <a d fis>^! <a d fis>^! |
  \set fingeringOrientations = #'(left)
  <a cis e-4 g>^! r <a cis e g>2^\markup{ \italic "ten." } |

  \break

  <a cis e>8^!^1^2^4 <a d fis>^!^1^3^5 <a cis e>^! <a d fis>^! <a cis e>^! <a d fis>^! |
  <a cis e>^! <a d fis>^! <a cis e>^! <a d fis>^! <a cis e>^! <a d fis>^! |
  \set fingeringOrientations = #'(right)
  <a cis e>4 <e' g a-3 cis> <e g a cis> |
  \set fingeringOrientations = #'(left)
  <fis-2 a d>8^! r <fis, a d>2^1^2^5 |
  \bar "|."
}

dynamics = {
  s2.\f |
  s |
  s |
  s4 s2_\sf |

  s2. |
  s |
  s |
  s4 s2_\sf |
}

lh = \relative c {
  \clef bass
  \key d \major
  \time 3/4

  <d a'>8^!_2_5 <g b>^!_1_3 <d a'>^! <g b>^! <d a'>^! <g b>^! |
  <d a'>^! <g b>^! <d a'>^! <g b>^! <d a'>^! <g b>^! |
  <d a'>^!\noBeam \clef treble <d' fis>_!^3^1 <d fis>_!  <d fis>_!  <d fis>_!  <d fis>_!  |
  <a e'>_!^5_2 r <a e'>2^5^1^\markup{ \italic "ten." } |
  \break
  <a e'>8_!^5^2 <d fis>_!^3^1 <a e'>_! <d fis>_! <a e'>_! <d fis>_! |
  <a e'>_! <d fis>_! <a e'>_! <d fis>_! <a e'>_! <d fis>_! |
  \set fingeringOrientations = #'(left)
  <a e'>4 <a cis-3 e g> <a cis e g> |
  <d fis>8_!^2^1 r \clef bass <d, fis a>2_3_5^1 |
}

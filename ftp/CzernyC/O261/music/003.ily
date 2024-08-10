\version "2.24.4"

exercise = "3"
meter = { \tempo 4 = 130 }

rh = \relative c'' {
  \tempo "Allegro"
  \time 3/8
  c16-1( d e f g8-5\staccatissimo ) |
  g16-4( f e f g8-4\staccatissimo ) |
  \ottava #1
  c16-1( d e f g8-5\staccatissimo ) |
  <e g>4.^2^4 |
  f16-1( g a b c8-5\staccatissimo ) |
  g16-3( a g f e8-1\staccatissimo ) |
  <b d>^1^3\staccatissimo <d f>^3^5\staccatissimo <c e>\staccatissimo |
  <b d>4. |
  \ottava #0

  c,16-1( d e f g8\staccatissimo ) |
  g16-4( f e f g8\staccatissimo ) |
  \ottava #1
  c16-1( d e f g8\staccatissimo ) |
  <e g>4^3^5_>( <c e>8^1^3 ) |
  a'16-5 g f e d-1 c-4 |
  \ottava #0
  b a g-1 f-4 e d |
  c-1 e-3 g-5 d f d |
  c8 r r | \bar "|."
}

dynamics = \relative {
  r4.\p |
}

lh = <<
  \new Voice {
    \relative c' {
      \voiceOne
      c8-5 <e g>^1^3 <e g> |
      c <e g> <e g> |
      c <e g> <e g> |
      c <e g> <e g> |
      c <f a>^1^2 <f a> |
      c <e g> <e g> |
      \oneVoice
      g,^5_\staccatissimo b^3_\staccatissimo c_\staccatissimo |
      g g'16_( f e d |
      
      \voiceOne
      c8 ) <e g> <e g> |
      c <e g> <e g> |
      c <e g> <e g> |
      c <e g> <e g> |
      f,^5 <a d>^3^1 <a d> |
      g <b f'>^3^1 <b f'> |
      e4^2^4( g8^1 ) |
      \oneVoice e r r | \bar "|."
    }
  }
  
  \new Voice {
    \relative c' {
      \voiceTwo
      c4. |
      c |
      c |
      c |
      c |
      c |
      s |
      s |

      c |
      c |
      c |
      c |
      f, |
      g |
      c |
      c8 s s |
      \bar "|."
    }
  }
>>

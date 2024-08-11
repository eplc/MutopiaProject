\include "customScripts.ily"

fingeringInsideSlur = \once \override Fingering.avoid-slur = #'inside

#(define staccatissimo-padding
  '(
    (staccatissimo . ((padding . 1)))
  )
)


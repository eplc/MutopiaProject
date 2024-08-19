\include "customScripts.ily"

fingeringInsideSlur = \once \override Fingering.avoid-slur = #'inside

% Slurs usually sit on top of articulations in Lilypond.
% These pieces have a lot of slurs ending on a stacatissimo,
% and this looks wrong. /slursUnderStacatissimos lowers the
% endpoints of slurs, and raises stacatissimos up to counter
% this.
#(define staccatissimo-padding
  '(
    (staccatissimo . ((padding . 1)))
  )
)

slursUnderStacatissimos = {
  \override Slur.positions = #'(0 . -1)
  \customScripts #staccatissimo-padding
}

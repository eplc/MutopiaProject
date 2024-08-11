\score {
  \header {
    opus = \opus
  }

  \new PianoStaff = "main" \with {
    instrumentName = \markup {
      \center-column {
        \line { \bold \huge \number { \exercise "." } }
      }
    }
  }

  <<
    \new Staff = "RH" \rh
    \new Dynamics \dynamics
    \new Staff \lh
    \new Devnull = "main" \breaks
  >>
}
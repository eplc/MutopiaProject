\version "2.24.4"

\header {
  composer            =       \markup { \bold "Carl Czerny" }
  mutopiacomposer     =       "CzernyC"

  title               =       "125 Passagen-Übungen"
  mutopiatitle        =       "125 Passagen-Übungen"

  mutopiaopus         =       "Op. 261"

  license             =       "Public Domain"
  enteredby           =       "eplc"
  maintainer          =       "eplc"
  mutopiainstrument   =       "Piano"

 footer = "Mutopia-2016/11/15-2146"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

opus = "Op. 261"
breaks = \autoLineBreaksOn

\include "music/001.ily"
\book {
  \bookOutputSuffix "001"
  \include "exercise.ily"
  \include "midi.ily"
}

\include "music/002.ily"
\book {
  \bookOutputSuffix "002"
  \include "exercise.ily"
  \include "midi.ily"
}

\include "music/003.ily"
\book {
  \bookOutputSuffix "003"
  \include "exercise.ily"
  \include "midi.ily"
}

\include "music/004.ily"
\book {
  \bookOutputSuffix "004"
  \include "exercise.ily"
  \include "midi.ily"
}







#(set-global-staff-size 18)

breaks = \autoLineBreaksOff
\include "music/001.ily"
\include "exercise.ily"

opus = ""
\include "music/002.ily"
\include "exercise.ily"

breaks = \autoLineBreaksOn
\include "music/003.ily"
\include "exercise.ily"

breaks = \autoLineBreaksOn
\include "music/004.ily"
\include "exercise.ily"

\version "2.24.4"

\header {
  composer            =       \markup { \bold "Carl Czerny" }
  mutopiacomposer     =       "CzernyC"

  title               =       \markup { \fontsize #4 \medium \center-column \string-lines "125 
                                Passagen-Übungen" }
  mutopiatitle        =       "125 Passagen-Übungen"
  subtitle            =       \markup { \fontsize #4 \medium "Exercises for passage-playing / Exercises de passages" \vspace #1.5 }

  opus                =       "Op. 261"
  mutopiaopus         =       "Op. 261"

  license             =       "Public Domain"
  enteredby           =       "eplc"
  maintainer          =       "eplc"
  mutopiainstrument   =       "Piano"

 footer = "Mutopia-2016/11/15-2146"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\include "exercises.ily"
\include "book.ily"

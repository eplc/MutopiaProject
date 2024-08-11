#!/bin/bash

# Find the number of the latest exercise in the book
previous=$(grep 'music\/' book.ily | tail -1 | sed 's/.*\/\([0-9]*\).*/\1/')

# Remove leading zeroes
previous=$(echo $previous | sed 's/^0*//')

# Increment the number
next=$(($previous + 1))

# Add leading zeroes
next_with_zeros=$(printf "%03d" $next)

# Create the new exercise
cat music/000-template.ily | sed "s/^exercise = \"0\"/exercise = \"$next\"/" > music/$next_with_zeros.ily

# Add the new exercise to the book
cat << EOF >> book.ily

\include "music/${next_with_zeros}.ily"
\include "lib/exercise.ily"
EOF

# Add the new exercise to the list of exercises
cat << EOF >> exercises.ily

\include "music/${next_with_zeros}.ily"
\book {
  \bookOutputSuffix "${next_with_zeros}"
  \include "lib/exercise.ily"
  \include "lib/midi.ily"
}
EOF

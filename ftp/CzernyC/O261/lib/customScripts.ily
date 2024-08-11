#(define (custom-script-tweaks ls)
  (lambda (grob)
    (let* ((type (ly:event-property
                    (ly:grob-property grob 'cause)
                    'articulation-type))
           (tweaks (assoc-ref ls type)))
      (if tweaks
          (for-each
            (lambda (x) (ly:grob-set-property! grob (car x) (cdr x)))
            tweaks)))))

customScripts =
#(define-music-function (settings) (list?)
#{
  \override Script.before-line-breaking =
    #(custom-script-tweaks settings)
#})

revertCustomScripts = \revert Script.before-line-breaking

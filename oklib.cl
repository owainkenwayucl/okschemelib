; range begin end step
; This behaves like Python's range i.e. stops before n
; We want to use a loop rather than recursion because CL implementations
; have very small stack sizes.
(defun okrange (b n j) (loop for a = b then (+ a j) while (<= a n) collect a))

; map function list - note Common Lisp should really have a map so this is 
; superfluous.
(defun okmap (f d) (loop for a in d collect (funcall f a)))

; check to see if string s ends with string e
(defun okendswith? (s e) (if (> (length s) (length e)) (string= e (subseq s (- (length s) (length e)) (length s) ))))

; check to see if string s ends with string e (case insensitive)
(defun okendswith-ci? (s e) (if (> (length s) (length e)) (string-equal e (subseq s (- (length s) (length e)) (length s) ))))

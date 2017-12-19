; range begin end step
; This behaves like Python's range i.e. stops before n
; We want to use a loop rather than recursion because CL implementations
; have very small stack sizes.
(defun okrange (b n j) 
	(loop while (< b n) 
		do (setf b (+ b j)) 
		collect (- b j)
	)
)


; map function list - note Common Lisp should really have a map so this is 
; superfluous.
(defun okmap (f d) 
	(if (= (length d) 0) 
		d 
		(cons (funcall f (car d)) (okmap f (cdr d)))
	)
)

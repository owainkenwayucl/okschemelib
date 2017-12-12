; range begin end step
(defun okrange (b n j) 
	(if (>= b n)
		'()
		(cons b (okrange (+ b j) n j))
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

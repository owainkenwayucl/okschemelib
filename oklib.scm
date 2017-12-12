; Library of Scheme functions for when they just aren't there.

; range begin end step
(define (okrange b n j) 
	(if (>= b n) 
		'() 
		(cons b (okrange (+ b j) n j))
	)
)

; map function list
(define (okmap f d) 
	(if (= (length d) 0) 
		d 
		(cons (f (car d)) (okmap f (cdr d)))
	)
)

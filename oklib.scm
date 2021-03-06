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

; check to see if string s ends with string e
(define (endswith? s e)
	(if (> (string-length s) (string-length e))
		(string=? e (substring s (- (string-length s) (string-length e)) (string-length s) ))
	)
)

; check to see if string s ends with string e (case insensitive)
(define (endswith-ci? s e)
	(if (> (string-length s) (string-length e))
		(string-ci=? e (substring s (- (string-length s) (string-length e)) (string-length s) ))
	)
)

; This always rounds .5 up rather than away from zero
;(define (okround x)
;	(floor (+ x 0.5))
;)

(define (okround x)
	(if (>= x 0) 
		(floor (+ x 0.5))
		(* -1 (floor (+ (* -1 x) 0.5)))
	)
) 

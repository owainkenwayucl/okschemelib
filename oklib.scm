; Library of Scheme functions for when they just aren't there.

; range begin end step
(define (range b n j) 
	(if (>= b n) 
		'() 
		(cons b (range (+ b j) n j))
	)
)

; map function list
(define (map f d) 
	(if (= (length d) 0) 
		d 
		(cons (f (car d)) (map f (cdr d)))
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


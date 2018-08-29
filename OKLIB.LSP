; Range from b to n with step j
(defun range (b n j)
   (do ((i b (+ i j))) ((>= i n))
      (if (typep b 'LIST)
          (setq b (cons i b))
          (setq b (list i))
      )
   ) 
   (reverse b)
)

; Case sensitive startswith? function
(defun startswith? (s e)
   (if (>= (length s) (length e))
      (string= s e :end1 (length e))
   )
)

; Case insensitive startswith? function
(defun startswith-ci? (s e)
   (if (>= (length s) (length e))
      (string-equal s e :end1 (length e))
   )
)


; Case sensitive endswith? function
(defun endswith? (s e)
   (if (>= (length s) (length e))
      (string= s e :start1 (- (length s) (length e)) :end1 (length s))
   )
)

; Case insensitive endswith? function
(defun endswith-ci? (s e)
   (if (>= (length s) (length e))
      (string-equal s e :start1 (- (length s) (length e)) :end1 (length s))
   )
)

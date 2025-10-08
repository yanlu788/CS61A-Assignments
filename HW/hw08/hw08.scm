(define (ascending? s) 
    (if (null? s)
        #t
        (if (null? (cdr s))
        #t
        (if (> (car s) (car (cdr s)))
        #f
        (ascending? (cdr s))
        )
        )
    )
)

(define (my-filter pred s) 
    (cond ((null? s) nil)
        ((pred (car s)) (cons (car s) (my-filter pred (cdr s))))
        (else
            (my-filter pred (cdr s))
        )
    )
)

(define (interleave lst1 lst2) 
    (cond 
        ((null? lst1) (append lst2))
        ((null? lst2) (append lst1))
        (else
            (append 
                (cons (car lst1) nil)
                (cons (car lst2) nil)
                (interleave (cdr lst1) (cdr lst2))
            )
        )
    )
)

(define (no-repeats s) 
    (if (null? s)
        nil
        (cons (car s)
            (no-repeats 
                (filter (lambda (x) (not (= x (car s))))
                    (cdr s))
            )
        )
    )
)

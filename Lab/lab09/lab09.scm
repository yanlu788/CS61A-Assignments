(define (over-or-under num1 num2) 
  (cond 
    ((< num1 num2) -1)
    ((= num1 num2) 0)
    ((> num1 num2) 1))
)

(define (make-adder num) 
  (lambda (inc) (+ num inc))
)

(define (composed f g) 
  (lambda (x) (f (g x)))
)

(define (repeat f n) 
  (if (= n 0)
    (lambda (x) x)
    (lambda (x) (f ((repeat f (- n 1)) x))))
)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) 
  (define max (max a b))
  (define min (min a b))
  (if (zero? (modulo max min))
  min
  (gcd min (modulo max min))))

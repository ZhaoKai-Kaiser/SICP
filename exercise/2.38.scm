(load "utils.scm")

(define fold-right accumulate)

(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest) result
        (iter (op result (car rest)) (cdr rest))))
  (iter initial sequence))


(fold-right / 1 (list 1 2 3))

(fold-left / 1 (list 1 2 3))

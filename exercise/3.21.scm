(load "queue.scm")

(define q1 (make-queue))

(insert-queue! q1 'a)
(insert-queue! q1 'b)
(delete-queue! q1)
(delete-queue! q1)

(define (print-queue queue) (car queue))

(print-queue q1)
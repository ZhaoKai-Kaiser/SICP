(load "stream.scm")

(define (ln2 n)
        (cons-stream (/ 1.0 n)
                     (stream-map - (ln2 (+ n 1)))))

(define ln2-stream (partial-sums (ln2 1)))

(display-top10-line ln2-stream)

(display-top10-line (euler-transform ln2-stream))

(display-top10-line (accelerated-sequence euler-transform ln2-stream))

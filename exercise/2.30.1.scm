(load "utils.scm")

(define (tree-map f tree)
     (cond ((null? tree) ())
           ((not (pair? tree)) (f tree))
           (else (cons (tree-map f (car tree))
                       (tree-map f (cdr tree))))))

(define (square-tree tree) (tree-map square tree))

(square-tree (list 1 (list 2 (list 3 4) 5) (list 6 7)))

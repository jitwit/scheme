
(define accumulate-tests
  `((test-success "empty list"
                  equal?
                  accumulate
                  (list (lambda (x) x) (list))
                  '())
    (test-success "empty list"
                  equal?
                  accumulate
                  (list (lambda (x) (* x x)) (list 1 2 3))
                  '(1 4 9))
    ))

(put-problem!
 'accumulate
 `((test . ,accumulate-tests)
   (stubs accumulate)
   (version . "0.0")
   (skeleton . "accumulate.scm")
   (solution . "example.scm")
   (markdown . ,(splice-exercism 'accumulate))))


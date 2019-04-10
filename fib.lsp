;;; file: fib.lsp
;;; problem 1.3

(defun fib1(n)
    (if (< n 2)
        n   
        (+ (fib1 (- n 1)) (fib1 (- n 2)))
    )
)

(defun tailfib(n fst secd index)
    (cond((= n 1) fst)
     ((= n 2) secd)
     ((= n index) (+ fst secd))
     ((> n index) (tailfib n secd (+ fst secd) (+ index 1)))
    )
)

(defun fib2(n)
    (tailfib n 1 1 3)
)


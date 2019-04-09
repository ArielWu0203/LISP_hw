;;; file: prime.lsp


(defun check(n)
    (let ((i 2))
        (loop
            (when (= i n) (return "yes"))
            (when (= (rem n i) 0) (return "not"))
            (setq i (+ i 1))
        )
    )
)

(defun prime(n)
    (if (= n 1)
        "not"
        (check n)
    )
)

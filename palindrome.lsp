;;; file : palindrome.lsp

(defun palindrome (lst)
    (equal lst (reverse lst))
)

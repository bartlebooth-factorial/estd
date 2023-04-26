;; stack.lisp
;; -- desc: basic immutable stack implementation
;; -- uses: good for passing to recursive calls

(defun make-stack ()
  '(MARKER))

(defun push-stack (e s)
  (cons e s))

(defun peek-stack (s)
  (car s))

(defun popped-stack (s)
  (cdr s))

(defun is-empty-stack (s)
  (eq (peek-stack s) 'MARKER))

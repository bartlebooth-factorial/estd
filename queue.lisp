;; queue.lisp
;; -- desc: basic immutable queue implementation
;; -- uses: good for passing to recursive calls

(defun make-queue ()
  '(FRONT END))

(defun push-queue (q e)
  (if (eq (car q) 'END)
      (cons e '(END))
      (cons (car q) (push-queue (cdr q) e))))

(defun peek-queue (q)
  (car (cdr q)))

(defun popped-queue (q)
  (cons 'FRONT (cdr (cdr q))))

(defun is-empty-queue (q)
  (equal q (make-queue)))

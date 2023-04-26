;; sections.lisp
;; -- desc: get the parts of a list relative to an element or predicate
;; -- uses: whenever you need to do this ^

(defun before (elem lst)
  (labels ((rec (l acc)
	     (if l
		 (let ((cur (car l)))
		   (if (equal cur elem)
		       (nreverse acc)
		       (rec (cdr l) (cons cur acc))))
		 acc)))
    (rec lst nil)))

(defun after (elem lst)
  (if lst
      (let ((cur (car lst)))
	(if (equal cur elem)
	    (cdr lst)
	    (after elem (cdr lst))))
      nil))


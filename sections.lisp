;; sections.lisp
;; -- desc: get the parts of a list relative to an element or predicate
;; -- uses: whenever you need to do this ^
;; -- TODO: implement predicate versions

(defun before (elem lst)
  "Get the list of elements in 'lst' that come before 'elem'.
Returns nil if 'elem' not in 'lst'"
  (labels ((rec (l acc)
	     (if l
		 (let ((cur (car l)))
		   (if (equal cur elem)
		       (nreverse acc)
		       (rec (cdr l) (cons cur acc))))
		 nil)))
    (rec lst nil)))

(defun after (elem lst)
  "Get the list of elements in 'lst' that come after 'elem'.
Returns nil if 'elem' not in 'lst'"
  (if lst
      (let ((cur (car lst)))
	(if (equal cur elem)
	    (cdr lst)
	    (after elem (cdr lst))))
      nil))

(defun between (elem lst)
  "Get a list of the lists that fall between occurrences of 'elem' in
'lst'. Returns ('lst') if 'elem' not in 'lst'."
  (if (after elem lst)
      (cons (before elem lst) (between elem (after elem lst)))
      (if (equal (car (reverse lst)) elem)
	  (list (before elem lst) nil)
	  (list lst))))

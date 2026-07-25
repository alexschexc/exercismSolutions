;;; queue.el --- Queue data structure  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun make-queue ()
  (let ((queue (list nil)))
    (setf (car queue) queue)))

(defun enqueue (item queue)
  (let ((last-cell (list item)))
    (setf (cdr (car queue)) last-cell
          (car queue) last-cell))
  item)

(defun dequeue (queue)
  (prog1
    (cadr queue)
    (setf (cdr queue) (cddr queue))
    (when (null (cdr queue))
      (setf (car queue) queue))))

(defun queue-emptyp (queue)
  (not (cdr queue)))

(defun queue-not-empty (queue)
  (cdr queue))

(defun queue-to-list (queue)
  (cdr queue))

(provide 'queue)

;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:
(require 'queue)

(defun accumulate (lst op)
  (let ((queue (make-queue)))
       (dolist (x lst)
       (enqueue (funcall op x) queue))
  (queue-to-list queue)))

(provide 'accumulate)
;;; accumulate.el ends here

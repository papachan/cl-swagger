;;;; -*- Mode: Lisp; indent-tabs-mode: nil -*-
(asdf:oos 'asdf:load-op :fiveam)

(defpackage swagger-test
  (:use :cl :fiveam))

(in-package #:swagger-test)

(def-suite swagger)
(in-suite swagger)

(test parse-test
  (is (equal 2 2)))

(defun run-tests ()
  (run! 'swagger))


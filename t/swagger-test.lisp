;;;; -*- Mode: Lisp; indent-tabs-mode: nil -*-
(asdf:oos 'asdf:load-op :fiveam)

(defpackage swagger-test
  (:use :cl :fiveam :swagger)
  (:export :run-tests))
(in-package #:swagger-test)


(def-suite tests)
(in-suite tests)

(test parse-test
  "a simple test with a method from swagger package"
  (is (equal t (swagger::post-through-url "http://google.com/"))))

(defun run-tests ()
  (5am:run! 'tests))


(run-tests)


(defmodule my-app-app
  (behaviour application)
  ;; app implementation
  (export
   (start 2)
   (stop 1)))

;;; --------------------------
;;; application implementation
;;; --------------------------

(defun start (_type _args)
  (logger:set_application_level 'my-app 'all)
  (logger:info "Starting my-app application ...")
  (my-app-sup:start_link))

(defun stop (_state)
  (my-app-sup:stop)
  'ok)

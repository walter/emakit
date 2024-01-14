;; elixir- useful-functions.el
;;
;; Helpful functions specific to elixir editing.
;;
;; Walter McGinnis, 2024-01-15
;;
;; http://github.com/walter/emakit

;; based on collaboration between https://github.com/axelson
;; and Johnny5 in slack: https://elixir-lang.slack.com/archives/C067Y5FN1/p1704933246933849
;; final version from https://elixir-lang.slack.com/archives/C067Y5FN1/p1704941330184569
(defun elixir-get-module-name ()
  "Get the elixir module name"
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (let* ((elixir-module-name nil))
      (if (re-search-forward "\\(defmodule \\(.*\\) do\\)" nil t)
          (kill-new (match-string 2))))))

(provide 'elixir-useful-functions)

; Inject rhai expression highlighting into expr() string content
(expr_call
  (string) @injection.content
  (#set! injection.language "rhai_expr"))

; Inject into triple-quoted expr strings
(expr_call
  (triple_string) @injection.content
  (#set! injection.language "rhai_expr"))

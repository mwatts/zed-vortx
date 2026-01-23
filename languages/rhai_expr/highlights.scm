; Function calls
(call_expression
  function: (identifier) @function.call)

; Method calls
(method_call
  method: (identifier) @function.method)

; Known built-in functions
((call_expression
  function: (identifier) @function.builtin)
  (#any-of? @function.builtin "now" "env" "coalesce" "len" "type_of" "to_string" "to_int" "to_float"))

; Property access
(member_expression
  property: (identifier) @property)

; Operators
[
  "=="
  "!="
  "<"
  ">"
  "<="
  ">="
  "&&"
  "||"
  "+"
  "-"
  "*"
  "/"
  "%"
  "!"
] @operator

; Literals
(string) @string
(string_content) @string
(number) @number
(integer) @number

; Boolean and null
[
  "true"
  "false"
  "null"
] @constant.builtin

; Identifiers
(identifier) @variable

; Punctuation
["(" ")"] @punctuation.bracket
["," "."] @punctuation.delimiter

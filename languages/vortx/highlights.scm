; Keywords
[
  "workflow"
  "end"
  "node"
  "edge"
  "let"
  "var"
  "version"
  "deadline"
  "define"
  "requires"
  "from"
  "when"
] @keyword

; Builtin function (expr)
"expr" @function.builtin

; Builtin constants
[
  "true"
  "false"
  "null"
] @constant.builtin

; Workflow name
(workflow_block
  name: (identifier) @function)

; Define preset name
(define_statement
  name: (identifier) @function)

; Node name
(node_definition
  name: (identifier) @variable)

; Node kind / define base kind
(node_definition
  kind: (identifier) @type)
(define_statement
  kind: (identifier) @type)

; Let/var binding name
(let_binding
  name: (identifier) @variable)
(var_binding
  name: (identifier) @variable)

; Parameter keys
(parameter
  key: (identifier) @property)

; Object entry keys
(object_entry
  key: (identifier) @property)

; Requires block
(requires_line
  source: (string) @string.special)

; Edge components
(edge_source
  node: (identifier) @variable)
(edge_output_name
  (identifier) @label)
(edge_output_name
  (integer) @label)
(edge_definition
  target: (identifier) @variable)

; Edge operator
"->" @operator

; Literals
(string) @string
(string_content) @string
(escape_sequence) @string.escape
(triple_string) @string
(number) @number
(integer) @number

; Comments
(comment) @comment

; Punctuation - brackets
[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
] @punctuation.bracket

; Punctuation - delimiters
[
  ","
  ":"
  "="
] @punctuation.delimiter

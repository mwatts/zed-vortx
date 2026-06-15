; Keywords
[
  "workflow"
  "define"
  "activity"
  "requires"
  "end"
  "constants"
  "vars"
  "inputs"
  "deadline"
  "branches"
  "from"
  "fork"
  "group"
  "when"
  "as"
  "version"
] @keyword

; Builtin function
"expr" @function.builtin

; Builtin constants
(boolean) @constant.builtin
(null_literal) @constant.builtin

; Workflow name
(workflow_block
  name: (identifier) @function)

; Define preset name
(define_statement
  name: (identifier) @function)

; Activity name
(activity_statement
  name: (identifier) @function)

; Step id
(step_def
  id: (identifier) @variable)

; Group step id
(group_step
  id: (identifier) @variable)

; Step kind / define base kind / activity kind
(step_def
  kind: (identifier) @type)
(define_statement
  kind: (identifier) @type)
(activity_statement
  kind: (identifier) @type)

; Step binding alias
(step_def
  binding: (identifier) @variable)

; Bare reference
(bare_ref
  ref: (identifier) @variable)

; Parameter keys
(param
  key: (identifier) @property)

; Object entry keys
(object_entry
  key: (identifier) @property)

; kv_entry keys (constants/vars)
(kv_entry
  key: (identifier) @property)

; Requires block
(requires_line
  source: (string) @string.special)

; Branch arm components
(branch_arm
  target: (identifier) @variable)
(branches_block
  from: (identifier) @variable)

; Arrow operator
"->" @operator
; Pipe operator
"|" @operator

; Literals
(string) @string
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

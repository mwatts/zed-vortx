; Workflow blocks in outline
(workflow_block
  name: (identifier) @name) @item

; Define statements in outline
(define_statement
  name: (identifier) @name) @item

; Activity statements in outline
(activity_statement
  name: (identifier) @name) @item

; Step definitions in outline (within workflow context)
(step_def
  id: (identifier) @name) @item

; Requires block in outline
(requires_block) @item

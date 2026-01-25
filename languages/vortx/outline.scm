; Workflow blocks in outline
(workflow_block
  name: (identifier) @name) @item

; Define statements in outline
(define_statement
  name: (identifier) @name) @item

; Node definitions in outline (within workflow context)
(node_definition
  name: (identifier) @name) @item

; Requires block in outline
(requires_block) @item

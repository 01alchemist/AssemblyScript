(module
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (global $std/gc-integration/foo1 (mut i32) (i32.const 0))
 (global $std/gc-integration/foo2 (mut i32) (i32.const 0))
 (global $std/gc-integration/foo3 (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (func $~alloc (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.const 8)
  )
 )
 (func $~visit (; 1 ;) (type $iv) (param $0 i32)
 )
 (func $~refer (; 2 ;) (type $iiv) (param $0 i32) (param $1 i32)
 )
 (func $~roots (; 3 ;) (type $v)
  (call $~visit
   (get_global $std/gc-integration/foo1)
  )
  (call $~visit
   (get_global $std/gc-integration/foo2)
  )
  (call $~visit
   (get_global $std/gc-integration/foo3)
  )
 )
)
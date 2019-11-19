" Custom typenames
syn keyword cType s8 s16 s32 s64
syn keyword cType u8 u16 u32 u64
syn keyword cType f32 f64
syn keyword cType umm smm
syn keyword cType string

" global, internal and local for static
syn keyword cStorageClass global
syn keyword cStorageClass internal
syn keyword cStorageClass local

" Various Keywords to match
syn keyword cStatement cast
syn keyword cStatement Assert
syn keyword cStatement ArrayCount
syn keyword cStatement Swap
syn keyword cStatement OffsetOf

" Highlight @ notes in comments
syn clear cTodo
syn match cTodo "@\I\i*\((\I\i*)\)\=:"

" Function highlighting
syn match cFunction /\I\i*(/me=e-1
hi def link cFunction Function

" So preprocessor stuff doesn't highlight weird when highlighting functions
syn cluster cPreProcGroup add=cFunction


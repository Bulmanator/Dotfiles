" custom typenames
syn keyword cType s8 s16 s32 s64
syn keyword cType u8 u16 u32 u64

syn keyword cType b8 b16 b32 b64

syn keyword cType f32 f64

syn keyword cType uptr sptr

syn keyword cType str8 str16 str32
syn keyword cType string

" global, internal and local for static
syn keyword cStorageClass global
syn keyword cStorageClass internal
syn keyword cStorageClass function
syn keyword cStorageClass local
syn keyword cStorageClass thread_var

" various keywords to match
syn keyword cStatement cast
syn keyword cStatement assert
syn keyword cStatement array_size
syn keyword cStatement offset_to
syn keyword cStatement size_of

" highlight @ notes in comments
syn clear cTodo
syn match cTodo "@\I\i*\((\I\i*)\)\=:\?" contained

" highlight notes in comments
syn match cNote ":\I\i*" contained
syn cluster cCommentGroup add=cNote

" function highlighting
syn match cFunction /\I\i*\s*(/me=e-1
syn cluster cPreProcGroup add=cFunction
hi def link cFunction Function

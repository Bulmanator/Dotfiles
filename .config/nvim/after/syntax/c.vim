" Custom typenames
syn keyword cType s8 s16 s32 s64
syn keyword cType u8 u16 u32 u64
syn keyword cType b8 b16 b32 b64
syn keyword cType f32 f64
syn keyword cType uptr sptr
syn keyword cType str8 str16 str32

" global, internal and local for static
syn keyword cStorageClass global
syn keyword cStorageClass function
syn keyword cStorageClass local

" Various Keywords to match
syn keyword cStatement cast
syn keyword cStatement Assert
syn keyword cStatement ArraySize
syn keyword cStatement OffsetTo

" Highlight @ notes in comments
syn clear cTodo
syn match cTodo "@\I\i*\((\I\i*)\)\=:" contained

" Highlight notes in comments
syn match cNote ":\I\i*" contained
syn cluster cCommentGroup add=cNote

" Function highlighting
syn match cFunction /\I\i*(/me=e-1
hi def link cFunction Function

" So preprocessor stuff doesn't highlight weird when highlighting functions
syn cluster cPreProcGroup add=cFunction

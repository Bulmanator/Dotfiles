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

" Various extra statement keywords
syn keyword cStatement cast
syn keyword cStatement Assert
syn keyword cStatement ArrayCount
syn keyword cStatement Swap
syn keyword cStatement OffsetOf

" Highlight @ notes in comments
syn match cTodo "@[A-Z][a-z]\+\(([A-Z][a-z]\+)\)\?:"


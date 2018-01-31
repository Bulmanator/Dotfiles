" Signed integers
syn keyword cType int8 int16 int32 int64
syn keyword cType s8 s16 s32 s64

" Unsigned integers
syn keyword cType uint8 uint16 uint32 uint64
syn keyword cType u8 u16 u32 u64

" Floating point numbers
syn keyword cType float32 float64 real32 real64
syn keyword cType f32 f64 r32 r64

" Highlight @ notes in comments
syn match cTodo "@\(Todo\|Note\|Redundant\|Optimise\|Fix\|Debug\|Leak\)\(([A-z ]\+):\)\?:\?"


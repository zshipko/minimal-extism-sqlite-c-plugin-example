WASICC?=wasicc

.PHONY: count-vowels
count-vowels:
	$(WASICC) -g -o out/example.wasm -Wl,--export=count_vowels -Wl,--export=__wasm_call_ctors -Wl,--allow-undefined -isystem. -DHAVE_UTIME=1 main.c sqlite3.c memvfs.c

run:
	extism call --input 'abcdefg' out/example.wasm count_vowels --wasi --allow-path .
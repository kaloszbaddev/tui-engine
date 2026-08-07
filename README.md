 # tui-engine

tui-engine is a small library that allows you to draw in the terminal.

![tui](tui.png)

## Installation

```
$ git clone https://github.com/kaloszbaddev/tui-engine.git
$ cd tui-engine
$ make
```

## Example
```c
#include "tui.h"

int main(int argc, char **argv) {

    tui_init();

    for ( ;; ) {
        tui_update();

        input_t key = tui_key();
        if ( key.value == TUI_Q ) break;

        const text_t text = (text_t) {
            .cstr  = "Hello World",
            .pos   = (vec2i_t) { 0, 0 },
			.color = TUI_AQUA 
        };

        tui_text(text);
        tui_draw();

		tui_mssleep(1000 / 60);
    }

    tui_exit();

    return 0;
}
```

## Building your project

```
$ cc main.c -L. -ltui && ./a.out
```


## Uninstall
```
$ make clean
```

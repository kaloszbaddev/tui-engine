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
#include <unistd.h>
#include "tui.h"

int main(int argc, char **argv) {
    tui_init();

    for ( ;; ) {
        tui_update();

        int key = tui_key();
        if ( key == TUI_Q ) break;

        const text_t text = (text_t) {
            .pos = (vec2i_t) { 0, 0 },
            .cstr = "Hello World"
        };

		tui_foreground(TUI_AQUA);
        tui_text(text);
        tui_draw();

        usleep(1000.);
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

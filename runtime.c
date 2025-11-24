#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

// Simple window runtime implementation
#ifdef _WIN32
#include <windows.h>
#endif

typedef struct {
    char name[256];
    int x, y;
    int width, height;
    int visible;
} Window;

Window windows[10];
int window_count = 0;

void create_window(const char* name) {
    if (window_count < 10) {
        strcpy(windows[window_count].name, name);
        windows[window_count].x = 100;
        windows[window_count].y = 100;
        windows[window_count].width = 200;
        windows[window_count].height = 200;
        windows[window_count].visible = 1;
        
        printf("🪟 Creating window: '%s' at (%d, %d) size %dx%d\n", 
               windows[window_count].name,
               windows[window_count].x,
               windows[window_count].y,
               windows[window_count].width,
               windows[window_count].height);
        
        window_count++;
        
        #ifdef _WIN32
        MessageBox(NULL, 
                   "Yellercake Window Created!\n\nThis is a simple console-based window display.\n\nIn a full implementation, this would create an actual graphical window.", 
                   name, 
                   MB_OK | MB_ICONINFORMATION);
        #endif
    }
}

void set_position(int x, int y) {
    if (window_count > 0) {
        windows[window_count - 1].x = x;
        windows[window_count - 1].y = y;
        printf("📍 Set position to (%d, %d)\n", x, y);
    }
}

void set_dimensions(const char* dimensions) {
    if (window_count > 0) {
        // Parse "50x50" format
        int width, height;
        if (sscanf(dimensions, "%dx%d", &width, &height) == 2) {
            windows[window_count - 1].width = width;
            windows[window_count - 1].height = height;
            printf("📏 Set dimensions to %s (%dx%d)\n", dimensions, width, height);
        }
    }
}

void create_button(const char* name) {
    printf("🔘 Creating button: '%s'\n", name);
    #ifdef _WIN32
    MessageBox(NULL, "Button created!", name, MB_OK | MB_ICONINFORMATION);
    #endif
}

void create_entity(const char* name) {
    printf("🎯 Creating entity: '%s'\n", name);
}

# Tiny Fluid Grid: Compass Plugin

This is a port of the [Tiny Fluid Grid][], originally developed by
[Girlfriend][].

  [tiny fluid grid system]: http://tinyfluidgrid.com/
  [girlfriend]: http://girlfriendnyc.com/


## Usage Example

### HTML

    #container
      <!-- row 1 -->
      #col1
        #subcol1
        #subcol2
      #col2
      
      <!-- row 2 -->
      #col3
      #col4
      #col5

### Sass

    @import "tfg";
    
    // The following configuration variables are all optional.
    $tfg-min-width: 960px; // default 800px
    $tfg-max-width: 1200px; // default 960px
    $tfg-columns: 16; // default 12
    $tfg-gutter: 30%; // default 20%
    
    #container {
      @include container;
      
      // Row 1
      
      #col1 {
        @include grid(8);
        
        #subcol1 {
          @include grid(3);
          @include alpha;
        }
        
        #subcol2 {
          @include grid(5);
          @include omega;
        }
      }
      
      #col2 {
        @include grid(5);
        @include prepend(2);
        @include append(1);
      }
      
      // Row 2:
      
      #col3 { @include grid(4); }
      #col4 { @include grid(6); }
      #col5 { @include grid(6); }
    }


## (Un)license

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>

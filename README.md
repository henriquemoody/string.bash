String
======

Strings handler written in Bash.

`string_lower`
--------------

Lower case a string,

Passing string as parameter:
````bash
string_lower "Some STRING" # some string
````

Passing string in a pipe:
````bash
echo "Some STRING" | string_lower # some string
````

`string_upper`
--------------

Upper case a string.

Passing string as parameter:
````bash
string_lower "Some string" # SOME STRING
````

Passing string in a pipe:
````bash
echo "Some string" | string_lower # SOME STRING
````

`string_title`
--------------

Capitalize a string.

Passing string as parameter:
````bash
string_lower "some string" # Some String
````

Passing string in a pipe:
````bash
echo "some string" | string_lower # Some String
````

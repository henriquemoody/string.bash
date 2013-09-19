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

`string_separator_camelcase`
----------------------------

Converts a string replacing a separator to camelcase.


Passing string as parameter:
````bash
string_separator_camelcase "_" "this_is_a_string" # thisIsAString
````

Passing string in a pipe:
````bash
echo "this-is-a-string" | string_separator_camelcase "-" # thisIsAString
````

`string_camelcase_separator`
----------------------------

Converts a string replacing camelcase to a separator.


Passing string as parameter:
````bash
string_camelcase_separator "_" "thisIsAString" # this_Is_A_String
````

Passing string in a pipe:
````bash
echo "thisIsAString" | string_camelcase_separator "-" # this-Is-A-String
````

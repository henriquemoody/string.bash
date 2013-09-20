# String
Strings handler written in Bash.

## Available functions

* [string_lower][]
* [string_upper][]
* [string_title][]
* [string_separator_camelcase][]
* [string_camelcase_dash][]
* [string_camelcase_separator][]
* [string_camelcase_underscore][]

### string_lower
Lower case a string.

Passing string as argument:
````bash
string_lower "Some STRING" # some string
````

Using pipes:
````bash
echo "Some STRING" | string_lower # some string
````

### string_upper
Upper case a string.

Passing string as argument:
````bash
string_lower "Some string" # SOME STRING
````

Using pipes:
````bash
echo "Some string" | string_lower # SOME STRING
````

### string_title
Capitalize a string.

Passing string as argument:
````bash
string_lower "some string" # Some String
````

Using pipes:
````bash
echo "some string" | string_lower # Some String
````

### string_separator_camelcase
Converts a string replacing a separator to camelcase.

Passing string as argument:
````bash
string_separator_camelcase " " "This is a string" # ThisIsAString
````

Using pipes:
````bash
echo "this is a string" | string_separator_camelcase " " # thisIsAString
````

### string_camelcase_dash
Convert camelcase to dash.

Passing string as argument:
````bash
string_camelcase_dash "ThisIsAString" # This-Is-A-String
````

Using pipes:
````bash
echo "thisIsAString" | string_camelcase_dash # this-Is-A-String
````

### string_camelcase_separator
Convert camelcase to separator.

Passing string as argument:
````bash
string_camelcase_separator " " "ThisIsAString" # This Is A String
````

Using pipes:
````bash
echo "thisIsAString" | string_camelcase_separator " " # this Is A String
````

### string_camelcase_underscore
Convert camelcase to underscore.

Passing string as argument:
````bash
string_camelcase_underscore "ThisIsAString" # This_Is_A_String
````

Using pipes:
````bash
echo "thisIsAString" | string_camelcase_underscore # this_Is_A_String
````

[string_lower]: #string_lower
[string_upper]: #string_upper
[string_title]: #string_title
[string_separator_camelcase]: #string_separator_camelcase
[string_camelcase_dash]: #string_camelcase_dash
[string_camelcase_separator]: #string_camelcase_separator
[string_camelcase_underscore]: #string_camelcase_underscore

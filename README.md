# Libft

## Table of Contents
- [Description](#description)
- [Project Overview](#project-overview)
- [Functions Implemented](#functions-implemented)
- [Installation](#installation)
- [Usage](#usage)
- [Function Categories](#function-categories)
- [Examples](#examples)
- [Testing](#testing)
- [Project Structure](#project-structure)
- [Compilation](#compilation)
- [Resources](#resources)

## Description

**Libft** is the first project in the 42 School curriculum and serves as an introduction to C programming. The objective is to recreate several functions from the standard C library (`libc`) as well as additional utility functions that will be useful throughout the cursus.

This project helps students understand:
- How standard library functions work internally
- Memory management in C
- String manipulation
- Linked list operations
- File descriptor operations

All functions are coded according to the **42 Norm** coding standard.

## Project Overview

Libft consists of recreating standard C library functions from scratch, without using the original implementations. The library is divided into three main parts:

1. **Part 1**: Recreation of standard `libc` functions
2. **Part 2**: Additional utility functions not present in `libc`
3. **Bonus Part**: Linked list manipulation functions

## Functions Implemented

### Part 1 - Libc Functions

| Function | Description | Original Header |
|----------|-------------|----------------|
| `ft_isalpha` | Checks if character is alphabetic | `<ctype.h>` |
| `ft_isdigit` | Checks if character is a digit | `<ctype.h>` |
| `ft_isalnum` | Checks if character is alphanumeric | `<ctype.h>` |
| `ft_isascii` | Checks if character is ASCII | `<ctype.h>` |
| `ft_isprint` | Checks if character is printable | `<ctype.h>` |
| `ft_strlen` | Calculates string length | `<string.h>` |
| `ft_memset` | Fills memory with a byte | `<string.h>` |
| `ft_bzero` | Sets memory to zero | `<strings.h>` |
| `ft_memcpy` | Copies memory area | `<string.h>` |
| `ft_memmove` | Copies memory with overlap handling | `<string.h>` |
| `ft_strlcpy` | Copies string with size limit | `<string.h>` |
| `ft_strlcat` | Concatenates string with size limit | `<string.h>` |
| `ft_toupper` | Converts to uppercase | `<ctype.h>` |
| `ft_tolower` | Converts to lowercase | `<ctype.h>` |
| `ft_strchr` | Locates first occurrence of character | `<string.h>` |
| `ft_strrchr` | Locates last occurrence of character | `<string.h>` |
| `ft_strncmp` | Compares strings up to n characters | `<string.h>` |
| `ft_memchr` | Scans memory for character | `<string.h>` |
| `ft_memcmp` | Compares memory areas | `<string.h>` |
| `ft_strnstr` | Locates substring in string | `<string.h>` |
| `ft_atoi` | Converts string to integer | `<stdlib.h>` |
| `ft_calloc` | Allocates and zeros memory | `<stdlib.h>` |
| `ft_strdup` | Duplicates string | `<string.h>` |

### Part 2 - Additional Functions

| Function | Description |
|----------|-------------|
| `ft_substr` | Extracts substring from string |
| `ft_strjoin` | Concatenates two strings |
| `ft_strtrim` | Trims characters from beginning and end |
| `ft_split` | Splits string by delimiter |
| `ft_itoa` | Converts integer to string |
| `ft_strmapi` | Applies function to each character |
| `ft_striteri` | Applies function to each character with index |
| `ft_putchar_fd` | Outputs character to file descriptor |
| `ft_putstr_fd` | Outputs string to file descriptor |
| `ft_putendl_fd` | Outputs string with newline to file descriptor |
| `ft_putnbr_fd` | Outputs number to file descriptor |

### Bonus Part - Linked List Functions

| Function | Description |
|----------|-------------|
| `ft_lstnew` | Creates new list element |
| `ft_lstadd_front` | Adds element at beginning of list |
| `ft_lstsize` | Counts elements in list |
| `ft_lstlast` | Returns last element of list |
| `ft_lstadd_back` | Adds element at end of list |
| `ft_lstdelone` | Deletes single element |
| `ft_lstclear` | Deletes and frees list |
| `ft_lstiter` | Iterates list and applies function |
| `ft_lstmap` | Creates new list by applying function |

## Installation

```bash
# Clone the repository
git clone [repository-url]
cd libft

# Compile the library
make

# Compile with bonus functions
make bonus

# Clean object files
make clean

# Remove all generated files
make fclean

# Recompile everything
make re
```

## Usage

### Basic Usage

```c
#include "libft.h"

int main(void)
{
    char *str = "Hello, World!";
    char *copy;

    // Use libft functions
    printf("Length: %zu\n", ft_strlen(str));
    copy = ft_strdup(str);
    printf("Copy: %s\n", copy);

    // Don't forget to free allocated memory
    free(copy);
    return (0);
}
```

### Compilation with Libft

```bash
# Compile your program with libft
gcc -Wall -Wextra -Werror your_program.c -L. -lft -o your_program

# Or include the object files directly
gcc -Wall -Wextra -Werror your_program.c libft.a -o your_program
```

## Function Categories

### Character Classification and Conversion
- Character type checking (`ft_isalpha`, `ft_isdigit`, etc.)
- Case conversion (`ft_toupper`, `ft_tolower`)

### String Manipulation
- String analysis (`ft_strlen`, `ft_strchr`, `ft_strncmp`)
- String modification (`ft_substr`, `ft_strjoin`, `ft_strtrim`)
- String conversion (`ft_split`, `ft_itoa`, `ft_atoi`)

### Memory Management
- Memory manipulation (`ft_memset`, `ft_memcpy`, `ft_memmove`)
- Memory allocation (`ft_calloc`, `ft_strdup`)
- Memory comparison (`ft_memcmp`, `ft_memchr`)

### File Descriptor Operations
- Output functions (`ft_putchar_fd`, `ft_putstr_fd`, `ft_putendl_fd`, `ft_putnbr_fd`)

### Linked List Operations (Bonus)
- List creation and manipulation
- List traversal and modification

## Examples

### String Operations
```c
#include "libft.h"

int main(void)
{
    char *str = "  Hello World  ";
    char *trimmed;
    char **words;
    int i;

    // Trim whitespace
    trimmed = ft_strtrim(str, " ");
    printf("Trimmed: '%s'\n", trimmed);

    // Split into words
    words = ft_split(trimmed, ' ');
    i = 0;
    while (words[i])
    {
        printf("Word %d: %s\n", i, words[i]);
        free(words[i]);
        i++;
    }
    free(words);
    free(trimmed);
    return (0);
}
```

### Linked List Operations
```c
#include "libft.h"

int main(void)
{
    t_list *list = NULL;
    t_list *node;

    // Create and add nodes
    node = ft_lstnew("First");
    ft_lstadd_front(&list, node);

    node = ft_lstnew("Second");
    ft_lstadd_back(&list, node);

    printf("List size: %d\n", ft_lstsize(list));

    // Clean up
    ft_lstclear(&list, free);
    return (0);
}
```

## Testing

### Manual Testing
```c
// Create test files to verify your functions
#include "libft.h"
#include <stdio.h>
#include <string.h>

int main(void)
{
    // Test ft_strlen vs strlen
    char *test = "Hello";
    printf("ft_strlen: %zu, strlen: %zu\n", ft_strlen(test), strlen(test));

    // Test other functions...
    return (0);
}
```

### Automated Testing
Consider using testing frameworks like:
- [libft-unit-test](https://github.com/alelievr/libft-unit-test)
- [42FileChecker](https://github.com/jgigault/42FileChecker)
- [libftTester](https://github.com/Tripouille/libftTester)

## Project Structure

```
.
├── Makefile              # Compilation rules
├── libft.h              # Header file with function prototypes
├── ft_*.c               # Implementation files
└── README.md            # Project documentation
```

### Generated Files
```
.
├── *.o                  # Object files (after compilation)
├── libft.a              # Static library (after compilation)
└── *.out                # Test executables (if created)
```

## Compilation

### Makefile Rules
- `make` or `make all`: Compiles the mandatory functions
- `make bonus`: Compiles with bonus functions
- `make clean`: Removes object files
- `make fclean`: Removes object files and library
- `make re`: Recompiles everything

### Compilation Flags
The project must compile with:
```
-Wall -Wextra -Werror
```

### Library Creation
The Makefile creates a static library (`libft.a`) using the `ar` command:
```bash
ar rcs libft.a *.o
```

## Resources

### Official Documentation
- [42 Libft Subject](https://cdn.intra.42.fr/pdf/pdf/960/en.subject.pdf)
- [C Standard Library Reference](https://en.cppreference.com/w/c)

### Useful Links
- [Understanding the 42 Norm](https://github.com/42School/norminette)
- [C Programming Tutorial](https://www.learn-c.org/)
- [Memory Management in C](https://www.geeksforgeeks.org/dynamic-memory-allocation-in-c-using-malloc-calloc-free-and-realloc/)

### Testing Tools
- [Libft Tester by Tripouille](https://github.com/Tripouille/libftTester)
- [42 File Checker](https://github.com/jgigault/42FileChecker)
- [Libft Unit Test](https://github.com/alelievr/libft-unit-test)

## Error Handling

### Common Issues
- **Segmentation faults**: Often caused by NULL pointer dereferencing
- **Memory leaks**: Always free dynamically allocated memory
- **Buffer overflows**: Ensure proper bounds checking
- **Norm errors**: Follow the 42 coding standard strictly

### Best Practices
- Always check for NULL pointers
- Free allocated memory to prevent leaks
- Use `const` for parameters that shouldn't be modified
- Handle edge cases (empty strings, zero values, etc.)

---

**Note**: This project serves as the foundation for all subsequent 42 projects. The functions created here will be reused throughout the curriculum, so it's important to implement them correctly and efficiently.

**Grade**: This implementation should achieve 100/100 when all functions are correctly implemented according to the subject requirements and 42 Norm.

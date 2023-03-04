#!/bin/bash

# ## File expressions

# * True if file exists.

# ```bash
# [[ -a ${file} ]]
# ```

# * True if file exists and is a block special file.

# ```bash
# [[ -b ${file} ]]
# ```

# * True if file exists and is a character special file.

# ```bash
# [[ -c ${file} ]]
# ```

# * True if file exists and is a directory.

# ```bash
# [[ -d ${file} ]]
# ```

# * True if file exists.

# ```bash
# [[ -e ${file} ]]
# ```

# * True if file exists and is a regular file.

# ```bash
# [[ -f ${file} ]]
# ```

# * True if file exists and is a symbolic link.

# ```bash
# [[ -h ${file} ]]
# ```

# * True if file exists and is readable.

# ```bash
# [[ -r ${file} ]]
# ```

# * True if file exists and has a size greater than zero.

# ```bash
# [[ -s ${file} ]]
# ```

# * True if file exists and is writable.

# ```bash
# [[ -w ${file} ]]
# ```

# * True if file exists and is executable.

# ```bash
# [[ -x ${file} ]]
# ```

# * True if file exists and is a symbolic link.

# ```bash
# [[ -L ${file} ]]
# ```
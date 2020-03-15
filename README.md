a quick hack to insert `..` into long paths for easy viewing in my terminal.

<br>

dependencies

- luafilesystem (`luarocks luafilesystem`)

<br><br>

`usage: ellipsis_directory.lua <depth>`

```bash

# for example: this command
ellipsis_directory.lua 4

# shortens this path
# ~/Documents/Shared/Scripts/Projects/website/html/photos

# to this one
# ~/Documents/Shared/../../../html/photos

```

for this to work, it is necessary to add the following to your PS1 environtment variable

```bash
# insert the command whenever needed in your PS1
export PS1+="$(ellipsis_directory.lua 4)"
```

after sourcing your bash profile (or whever your PS1 variable is stored), the path should look like the following (as seen in the example above)

```
~/Documents/Shared/../../../html/photos
```

<br><br>

note

an observant reader will notice that `..` is not actually an ellipsis.

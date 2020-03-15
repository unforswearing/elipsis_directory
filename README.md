a quick hack to insert `..` into long paths for easy viewing in my terminal.

<br>

dependencies

- luafilesystem (`luarocks luafilesystem`)

<br>

usage

```bash
elipsis_directory.lua <depth>

# for example: this command
elipsis_directory.lua 4

# which shortens this path
# ~/Documents/Shared/Scripts/Projects/website/html/photos

# to this one
#~/Documents/Shared/../../../html/photos

```

for this to work, it is necessary to add the following to your PS1 environtment variable

```bash
export PS1+=" \[\e[31m\][\[\e[m\]\[\e[31m\]"
export PS1+="$(elipsis_directory.lua 4)"
export PS1+="\[\e[m\]\[\e[31m\]]\[\e[m\] \n-> "

```

after sourcing your bash profile (or whever your PS1 variable is stored), the path should look like the following (as seen in the example above)

```
~/Documents/Shared/../../../html/photos
```

<br><br>
(an observant reader will realize that `..` is not actually an elipsis.)

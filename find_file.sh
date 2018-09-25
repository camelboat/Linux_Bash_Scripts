#/!bash/bin

# ls file name without extension name
for i in *; do [ -f "$i" ] && echo "${i%%.*}"; done

# ls file name that starts with "e"
for i in *; do [ -f "$i" ] && [ "${i:0:1}" = "e" ] && echo ${i}; done 

# ls file name whose extension name is "png"
for i in *; do [ -f "$i" ] && [ "${i##*.}" = "png" ] && echo "${i%%.*}"; done

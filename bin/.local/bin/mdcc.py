import sys

input = ""
output = ""

try:
    input = sys.argv[1]
    output = sys.argv[2]
except IndexError as e:
    raise Exception("""Invalid usage of command. Usage:
mdcc <input>.md <output>.<ext>
""")
codeblocks = []

with open(input, "r") as inp:
    f = inp.readlines()
    last_line_index = 0
    for i in range(len(f)):
        if i == last_line_index:
            continue
        if f[i][0:3] == "```":
            codeblock = ""
            current_line_index = i + 1
            line = f[current_line_index]
            while line[0:3] != "```":
                codeblock += line
                current_line_index += 1
                line = f[current_line_index]
            else:
                last_line_index = current_line_index
                codeblocks.append(codeblock)

with open(output, "w") as out:
    out.writelines(codeblocks)

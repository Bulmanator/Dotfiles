#!/usr/bin/env python

import sys

colours = {
    "Black"      : '\033[0;30m',
    "Red"        : '\033[0;31m',
    "Green"      : '\033[0;32m',
    "Orange"     : '\033[0;33m',
    "Blue"       : '\033[0;34m',
    "Purple"     : '\033[0;35m',
    "Cyan"       : '\033[0;36m',
    "LightGray"  : '\033[0;37m',
    "DarkGray"   : '\033[1;30m',
    "LightRed"   : '\033[1;31m',
    "LightGreen" : '\033[1;32m',
    "Yellow"     : '\033[1;33m',
    "LightBlue"  : '\033[1;34m',
    "LightBlue"  : '\033[1;35m',
    "LightCyan"  : '\033[1;36m',
    "White"      : '\033[1;37m',
    "NoColour"   : '\033[0m'
}

show_names = False
show_warnings = False

if __name__ == "__main__":

    # Collate all of the data into dictionaries
    lines = []
    for line in sys.stdin:
        data = line.split(":");
        filename = data[0].split('/');

        line_data = {}
        line_data["File"] = filename[len(filename) - 1]
        line_data["Line"] = data[1]
        line_data["Type"] = data[3].lstrip()
        line_data["Msg"] = ""
        for x in range(4, len(data) - 1):
            line_data["Msg"] += data[x].lstrip() + ":"

        line_data["Msg"] += data[len(data) - 1].split('[')[0]
        if "[" in data[4]:
            line_data["Err"]  = "[" + data[4].split('[')[1].strip('\n')
        else:
            line_data["Err"] = ""

        lines.append(line_data)

    # Correct padding
    filename = 0
    line_number = 0
    message = 0
    has_warnings = False
    for data in lines:
        if len(data["File"]) > filename:
            filename = len(data["File"])

        if len(data["Line"]) > line_number:
            line_number = len(data["Line"])

        if len(data["Msg"]) > message:
                message = len(data["Msg"])

    filename += 1
    line_number += 1

    if line_number < 5: line_number = 5

    header = "File".ljust(filename) + "| " + "Line".ljust(line_number) + "| "
    if len(lines) == 1 and lines[0]["Type"] == "fatal error":
        header += "Type".ljust(len("Fatal Error") + 1) + "| "
    else:
        header += "Type".ljust(len("Warning") + 1) + "| "

    print(header + "Message")
    print("-"*(len(header) + message))
    for data in lines:
        line = colours["Purple"] + data["File"].ljust(filename) + \
                colours["LightGray"] + "| " + \
                colours["Yellow"] + data["Line"].ljust(line_number) + colours["LightGray"] + "| "

        if data["Type"] == "error":
            line = line + colours["Red"] + "Error   " + colours["LightGray"] + "| "
        elif data["Type"] == "fatal error":
            line = line + colours["Red"] + "Fatal Error " + colours["LightGray"] + "| "
        elif data["Type"] == "warning":
            line = line + colours["Orange"] + "Warning " + colours["LightGray"] + "| "
        else:
            line = line + colours["Black"] + "Unknown " + colours["LightGray"] + "| "

        line = line + colours["NoColour"] + data["Msg"];

        if show_names:
            line = line + data["Err"]

        print(line.strip('\n'))



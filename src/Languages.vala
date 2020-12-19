/* MIT License
#
# Copyright (c) 2020 Ferhat Geçdoğan All Rights Reserved.
# Distributed under the terms of the MIT License.
#
# */

public class Languages {
    private Colorized colors = new Colorized();

    public static string replaceAll(string str, string old, string replacement) {
        try {
            var regex = new GLib.Regex(GLib.Regex.escape_string(old));
            string result = regex.replace_literal(str, -1, 0, replacement);

            return result;
        } catch (GLib.RegexError e) {
            GLib.assert_not_reached();
            return "error";
       }

       return "null";
	}

    public void Regular(owned string line) {
        line = replaceAll(line, "int", colors.WBOLD_BLUE_COLOR + "int" + colors.WBLACK_COLOR);
        line = replaceAll(line, "long", colors.WBOLD_BLUE_COLOR + "long" + colors.WBLACK_COLOR);
        line = replaceAll(line, "char", colors.WBOLD_BLUE_COLOR + "char" + colors.WBLACK_COLOR);
        line = replaceAll(line, "const", colors.WBOLD_LIGHT_BLUE_COLOR + "const" + colors.WBLACK_COLOR);
        line = replaceAll(line, "void", colors.WBOLD_BLUE_COLOR + "void" + colors.WBLACK_COLOR);

        /* TODO:
         * Create token() function & add these tokens
        */
        line = replaceAll(line, "::", colors.WBOLD_LIGHT_YELLOW_COLOR + "::" + colors.WBLACK_COLOR);
        line = replaceAll(line, "{", colors.WBOLD_LIGHT_YELLOW_COLOR + "{" + colors.WBLACK_COLOR);
        line = replaceAll(line, "}", colors.WBOLD_LIGHT_YELLOW_COLOR + "}" + colors.WBLACK_COLOR);
        line = replaceAll(line, "(", colors.WBOLD_LIGHT_YELLOW_COLOR + "(" + colors.WBLACK_COLOR);
        line = replaceAll(line, ")", colors.WBOLD_LIGHT_YELLOW_COLOR + ")" + colors.WBLACK_COLOR);
        line = replaceAll(line, "*", colors.WBOLD_LIGHT_YELLOW_COLOR + "*" + colors.WBLACK_COLOR);
        line = replaceAll(line, "<", colors.WBOLD_LIGHT_YELLOW_COLOR + "<" + colors.WBLACK_COLOR);
        line = replaceAll(line, ">", colors.WBOLD_LIGHT_YELLOW_COLOR + ">" + colors.WBLACK_COLOR);
        line = replaceAll(line, "+", colors.WBOLD_LIGHT_YELLOW_COLOR + "+" + colors.WBLACK_COLOR);

        stdout.printf("%s\n", line);
    }

    public void CPlusPlus(owned string line) {
        line = replaceAll(line, "int", colors.WBOLD_BLUE_COLOR + "int" + colors.WBLACK_COLOR);

        line = replaceAll(line, "long", colors.WBOLD_BLUE_COLOR + "long" + colors.WBLACK_COLOR);

        line = replaceAll(line, "bool", colors.WBOLD_BLUE_COLOR + "bool" + colors.WBLACK_COLOR);
        line = replaceAll(line, "char", colors.WBOLD_BLUE_COLOR + "char" + colors.WBLACK_COLOR);
        line = replaceAll(line, "auto", colors.WBOLD_BLUE_COLOR + "auto" + colors.WBLACK_COLOR);

        line = replaceAll(line, "if", colors.WBOLD_LIGHT_RED_COLOR + "if" + colors.WBLACK_COLOR);
        line = replaceAll(line, "else", colors.WBOLD_LIGHT_RED_COLOR + "else" + colors.WBLACK_COLOR);

        line = replaceAll(line, "for", colors.WBOLD_MAGENTA_COLOR + "for" + colors.WBLACK_COLOR);
        line = replaceAll(line, "do", colors.WBOLD_MAGENTA_COLOR + "do" + colors.WBLACK_COLOR);
        line = replaceAll(line, "while", colors.WBOLD_MAGENTA_COLOR + "while" + colors.WBLACK_COLOR);

        line = replaceAll(line, "void", colors.WBOLD_RED_COLOR + "void" + colors.WBLACK_COLOR);
        line = replaceAll(line, "main", colors.WBOLD_LIGHT_RED_COLOR + "main" + colors.WBLACK_COLOR);
        line = replaceAll(line, "asm", colors.WBOLD_LIGHT_RED_COLOR + "asm" + colors.WBLACK_COLOR);

        line = replaceAll(line, "const", colors.WBOLD_LIGHT_BLUE_COLOR + "const" + colors.WBLACK_COLOR);
        line = replaceAll(line, "static", colors.WBOLD_LIGHT_BLUE_COLOR + "static" + colors.WBLACK_COLOR);
        line = replaceAll(line, "extern", colors.WBOLD_LIGHT_BLUE_COLOR + "extern" + colors.WBLACK_COLOR);
        line = replaceAll(line, "inline", colors.WBOLD_LIGHT_BLUE_COLOR + "inline" + colors.WBLACK_COLOR);
        line = replaceAll(line, "virtual", colors.WBOLD_LIGHT_BLUE_COLOR + "virtual" + colors.WBLACK_COLOR);
        line = replaceAll(line, "friend", colors.WBOLD_LIGHT_BLUE_COLOR + "friend" + colors.WBLACK_COLOR);

        line = replaceAll(line, "public", colors.WBOLD_LIGHT_BLUE_COLOR + "public" + colors.WBLACK_COLOR);
        line = replaceAll(line, "private", colors.WBOLD_LIGHT_BLUE_COLOR + "private" + colors.WBLACK_COLOR);
        line = replaceAll(line, "protected", colors.WBOLD_LIGHT_BLUE_COLOR + "protected" + colors.WBLACK_COLOR);

        line = replaceAll(line, "#include", colors.WBOLD_YELLOW_COLOR + "#include" + colors.WBLACK_COLOR);

        line = replaceAll(line, "typedef", colors.WBOLD_MAGENTA_COLOR + "typedef" + colors.WBLACK_COLOR);

        line = replaceAll(line, "#define", colors.WBOLD_MAGENTA_COLOR + "#define" + colors.WBLACK_COLOR);
        line = replaceAll(line, "#ifndef", colors.WBOLD_MAGENTA_COLOR + "#ifndef" + colors.WBLACK_COLOR);
        line = replaceAll(line, "#ifdef", colors.WBOLD_MAGENTA_COLOR + "#ifdef" + colors.WBLACK_COLOR);
        line = replaceAll(line, "#endif", colors.WBOLD_MAGENTA_COLOR + "#endif" + colors.WBLACK_COLOR);

        line = replaceAll(line, "return", colors.WBOLD_LIGHT_MAGENTA_COLOR + "return" + colors.WBLACK_COLOR);

        line = replaceAll(line, "nodiscard", colors.WBOLD_MAGENTA_COLOR + "nodiscard" + colors.WBLACK_COLOR);

        line = replaceAll(line, "class", colors.WBOLD_LIGHT_YELLOW_COLOR + "class" + colors.WBLACK_COLOR);
        line = replaceAll(line, "struct", colors.WBOLD_LIGHT_YELLOW_COLOR + "struct" + colors.WBLACK_COLOR);
        line = replaceAll(line, "namespace", colors.WBOLD_LIGHT_YELLOW_COLOR + "namespace" + colors.WBLACK_COLOR);

        line = replaceAll(line, "using", colors.WBOLD_GREEN_COLOR + "using" + colors.WBLACK_COLOR);

        line = replaceAll(line, "std", colors.WBOLD_LIGHT_YELLOW_COLOR + "std" + colors.WBLACK_COLOR);

        line = replaceAll(line, "iostream", colors.WBOLD_LIGHT_MAGENTA_COLOR + "iostream" + colors.WBLACK_COLOR);
        line = replaceAll(line, "cstring", colors.WBOLD_LIGHT_MAGENTA_COLOR + "cstring" + colors.WBLACK_COLOR);
        line = replaceAll(line, "sstream", colors.WBOLD_LIGHT_MAGENTA_COLOR + "sstream" + colors.WBLACK_COLOR);
        line = replaceAll(line, "fstream", colors.WBOLD_LIGHT_MAGENTA_COLOR + "fstream" + colors.WBLACK_COLOR);
        line = replaceAll(line, "memory", colors.WBOLD_LIGHT_MAGENTA_COLOR + "memory" + colors.WBLACK_COLOR);
        line = replaceAll(line, "cstdlib", colors.WBOLD_LIGHT_MAGENTA_COLOR + "cstdlib" + colors.WBLACK_COLOR);
        line = replaceAll(line, "cstdio", colors.WBOLD_LIGHT_MAGENTA_COLOR + "cstdio" + colors.WBLACK_COLOR);
        line = replaceAll(line, "vector", colors.WBOLD_LIGHT_MAGENTA_COLOR + "vector" + colors.WBLACK_COLOR);
        line = replaceAll(line, "algorithm", colors.WBOLD_LIGHT_MAGENTA_COLOR + "algorithm" + colors.WBLACK_COLOR);
        line = replaceAll(line, "thread", colors.WBOLD_LIGHT_MAGENTA_COLOR + "thread" + colors.WBLACK_COLOR);
        line = replaceAll(line, "array", colors.WBOLD_LIGHT_MAGENTA_COLOR + "array" + colors.WBLACK_COLOR);
        line = replaceAll(line, "bitset", colors.WBOLD_LIGHT_MAGENTA_COLOR + "bitset" + colors.WBLACK_COLOR);
        line = replaceAll(line, "deque", colors.WBOLD_LIGHT_MAGENTA_COLOR + "deque" + colors.WBLACK_COLOR);
        line = replaceAll(line, "map", colors.WBOLD_LIGHT_MAGENTA_COLOR + "map" + colors.WBLACK_COLOR);
        line = replaceAll(line, "stack", colors.WBOLD_LIGHT_MAGENTA_COLOR + "stack" + colors.WBLACK_COLOR);
        line = replaceAll(line, "set", colors.WBOLD_LIGHT_MAGENTA_COLOR + "set" + colors.WBLACK_COLOR);
        line = replaceAll(line, "iterator", colors.WBOLD_LIGHT_MAGENTA_COLOR + "iterator" + colors.WBLACK_COLOR);
        line = replaceAll(line, "tuple", colors.WBOLD_LIGHT_MAGENTA_COLOR + "tuple" + colors.WBLACK_COLOR);
        line = replaceAll(line, "locale", colors.WBOLD_LIGHT_MAGENTA_COLOR + "locale" + colors.WBLACK_COLOR);
        line = replaceAll(line, "regex", colors.WBOLD_LIGHT_MAGENTA_COLOR + "regex" + colors.WBLACK_COLOR);
        line = replaceAll(line, "istream", colors.WBOLD_LIGHT_MAGENTA_COLOR + "istream" + colors.WBLACK_COLOR);
        line = replaceAll(line, "ostream", colors.WBOLD_LIGHT_MAGENTA_COLOR + "ostream" + colors.WBLACK_COLOR);

        line = replaceAll(line, "cout", colors.WBOLD_CYAN_COLOR + "cout" + colors.WBLACK_COLOR);
        line = replaceAll(line, "printf", colors.WBOLD_CYAN_COLOR + "printf" + colors.WBLACK_COLOR);
        line = replaceAll(line, "getline", colors.WBOLD_CYAN_COLOR + "getline" + colors.WBLACK_COLOR);
        line = replaceAll(line, "cin", colors.WBOLD_CYAN_COLOR + "cin" + colors.WBLACK_COLOR);

        line = replaceAll(line, "::", colors.WBOLD_LIGHT_YELLOW_COLOR + "::" + colors.WBLACK_COLOR);
        line = replaceAll(line, "{", colors.WBOLD_LIGHT_YELLOW_COLOR + "{" + colors.WBLACK_COLOR);
        line = replaceAll(line, "}", colors.WBOLD_LIGHT_YELLOW_COLOR + "}" + colors.WBLACK_COLOR);
        line = replaceAll(line, "(", colors.WBOLD_LIGHT_YELLOW_COLOR + "(" + colors.WBLACK_COLOR);
        line = replaceAll(line, ")", colors.WBOLD_LIGHT_YELLOW_COLOR + ")" + colors.WBLACK_COLOR);
        line = replaceAll(line, "*", colors.WBOLD_LIGHT_YELLOW_COLOR + "*" + colors.WBLACK_COLOR);
        line = replaceAll(line, "<", colors.WBOLD_LIGHT_YELLOW_COLOR + "<" + colors.WBLACK_COLOR);
        line = replaceAll(line, ">", colors.WBOLD_LIGHT_YELLOW_COLOR + ">" + colors.WBLACK_COLOR);
        line = replaceAll(line, "+", colors.WBOLD_LIGHT_YELLOW_COLOR + "+" + colors.WBLACK_COLOR);

        stdout.printf("%s\n", line);
    }
}

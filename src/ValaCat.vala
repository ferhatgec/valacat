/* MIT License
#
# Copyright (c) 2020 Ferhat Geçdoğan All Rights Reserved.
# Distributed under the terms of the MIT License.
#
# */

public class ValaCat {
    public Colorized colors;
    public Languages syntax;

    public string version;
    public string data;

    public ValaCat() {
        version = "0.1";

        colors = new Colorized();
        syntax = new Languages();
    }

    public void HelpFunction(string file) {
        colors.BOLD_RED_COLOR();
        stdout.printf("Fegeya ");

        colors.BOLD_GREEN_COLOR();
        stdout.printf("ValaCat ");

        colors.BOLD_BLUE_COLOR();
        stdout.printf(this.version);

        colors.BOLD_YELLOW_COLOR();
        stdout.printf("\nColorized 'cat' implementation.\n");

        colors.BOLD_LIGHT_MAGENTA_COLOR();
        stdout.printf("%s [file]\n", file);
    }

    public void ReadFile(int language, string file) {
        var line = FileStream.open(file, "r");

        data = line.read_line();

        if(language == 1) {
            while(data != null) {
                syntax.CPlusPlus(data);
                data = line.read_line();
            }
        } else if(language == 0) {
            while(data != null) {
                syntax.Regular(data);
                data = line.read_line();
            }
        }
    }
}

int main(string[] arguments) {
    ValaCat cat = new ValaCat();

    if(arguments[1] == null) {
        cat.HelpFunction(arguments[0]);
        return 0;
    }

    if(arguments[1].contains(".cpp") == true) {
        cat.ReadFile(1, arguments[1]);
    } else {
        cat.ReadFile(0, arguments[1]);
    }

    return 0;
}

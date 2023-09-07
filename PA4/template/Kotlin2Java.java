import java.io.*;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

public class Kotlin2Java {
    public static void main(String[] args) throws Exception {
        String inputFileName, outputFileName;

        if (args.length == 0) {
            System.out.println("Usage: $ java Kotlin2Java input [output]");
            System.exit(1);
        }

        inputFileName = args[0];
        outputFileName = (args.length == 1) ? args[0].split("\\.")[0] + ".java" : args[1];

        // CharStreams charStream = CharStreams.fromFileName(inputFileName);
        // KotlinLexer lexer = new KotlinLexer(charStream);
        // CommonTokenStream tokens = new CommonTokenStream(lexer);
        // KotlinParser parser = new KotlinParser(tokens);

        // write your code here

    }
}

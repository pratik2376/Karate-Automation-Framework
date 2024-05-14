package feature.utils;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

public class fileUtility {

    /**
     * @param filepath
     * @return file content in string format
     */

    public static String readFile(String filePath) {
        String content = "";
        try {
            content = new String(Files.readAllBytes(Paths.get(filePath)));
        } catch (IOException e){
            System.out.println(e); 
        }
        return content;
    }

    /**
     *  @param contentToAdd
     *  @param filename
     *  @throws IOExcption
     */
    public void addToFile(String contentToAdd, String filename)
        throws IOException{

        contentToAdd = contentToAdd + "\r\n";
        Files.write(Paths.get(filename), contentToAdd.getBytes(), StandardOpenOption.APPEND);
    }


    
}

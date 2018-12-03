package util_DB;

public class myTools {
    public  static String getExtension(String filename){
        String exten=filename.substring(filename.lastIndexOf("."));
        return exten;
    }
}

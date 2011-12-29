package asset;

@SuppressWarnings("serial")
public class DuplicateFileException extends AssetException {
    public DuplicateFileException(String fileType, String fileName, String tagName) {
        super(buildMessage(fileType, fileName, tagName));
    }

    private static String buildMessage(String fileType, String fileName, String tagName) {
        String msg = "Attempt to add the same " + fileType + " file ";
        msg += "to compression twice: '" + fileName + "'\n";
        msg += "Check that you're not including the same file in two different ";
        msg += tagName + " tags.";
        
        return msg;
    }
}

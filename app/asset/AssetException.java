package asset;

@SuppressWarnings("serial")
public class AssetException extends RuntimeException {
    public AssetException(Exception e) {
        super(e);
    }
    
    public AssetException(String msg) {
        super(msg);
    }
}

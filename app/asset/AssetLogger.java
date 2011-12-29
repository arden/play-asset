package asset;

import play.Logger;

public class AssetLogger {
    public static void trace(String message, Object... args) {
        Logger.trace("asset: " + message, args);
    }
}

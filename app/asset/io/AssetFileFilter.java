package asset.io;

import java.io.File;
import java.io.FileFilter;

import play.vfs.VirtualFile;
import asset.Compressor;

public class AssetFileFilter implements FileFilter {
    String extension;

    public AssetFileFilter(String extension) {
        this.extension = extension;
    }

    public boolean accept(File file) {
        if (!file.getName().endsWith(extension)) {
            return false;
        }

        // If the file contains a compression header, it's a asset
        // compressed file
        VirtualFile virt = VirtualFile.open(file);
        CompressedFile compressedFile = CompressedFile.create(virt.relativePath());
        return compressedFile.exists() && Compressor.hasPressHeader(compressedFile);
    }
}

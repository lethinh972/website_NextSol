package vn.nextsol.fileUpload;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class UploadImageFile {

	public static final String Image = "C:\\xampp\\htdocs\\images";
	public static final String ip = "http://localhost:8181/";

	public static String upload(MultipartFile file) {
		String filename = "";
		try {
			filename = new Date().getTime() + "_" + file.getOriginalFilename();
			filename = filename.replaceAll(" ", "");
			byte[] bytes = file.getBytes();
			String image = Image + File.separator + filename;
			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(image)));
			stream.write(bytes);
			stream.flush();
			stream.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return ip + "images/" + filename;
	}
}
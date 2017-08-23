/**
 * 
 */
package com.mysql.controller;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.imageio.ImageIO;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.jt.common.vo.PicUploadResult;

/**
 * @author Airey
 * @date 2017年7月25日
 */
@Controller
public class FileUploadController {
	private static final Logger logger = Logger.getLogger(FileUploadController.class);

	/**
	 * 文件上传的步骤 1.采用文件正确的接受方式接受(修改3处:配置文件，接口类型) 2.判断是否为一个图片,0表示无异常,1表示异常(jpg|gif|png)
	 * 3.判断是不是一个正经的图片 判断是否有weight和height
	 * 4.编辑磁盘目录D:/jt-upload\images\yyyy\MM\dd\HH\mm\文件的名称
	 * 5.编辑相对路径url:image.jt.com/images\yyyy\MM\dd\HH\mm\文件的名称 6.将文件保存
	 * 
	 * @param imgurl
	 * @return
	 */

	public static void main(String[] args) {
		fileUpload();
	}

	private static String imgurl = "http://a.vpimg4.com/upload/merchandise/pdcvis/2017/05/31/39/495b7b85-827c-4f01-829b-f28813c9faf8.jpg";

	public static PicUploadResult fileUpload() {

		String filename = imgurl.substring(imgurl.lastIndexOf("/") + 1, imgurl.length());
		/// 495b7b85-827c-4f01-829b-f28813c9faf8.jpg
		System.out.println(filename);
		PicUploadResult picUpload = new PicUploadResult();
		// 1.获取文件名称 XXX.JPG
		// String fileName = imgurl.getOriginalFilename();
		// 2.获取后缀名称
		String endName = imgurl.substring(imgurl.lastIndexOf("."));
		// 3.判断是否为图片格式
		if (!endName.matches("^.*(jpg|png|gif)$")) {
			logger.error("~~~~~~~~文件后缀名不符合图片格式");
			picUpload.setError(1);
			return picUpload;
		}
		// 4.判断文件是否为一个正确的图片
		try {
			URL url = new URL(imgurl);
			URLConnection con = url.openConnection();
			con.setConnectTimeout(5 * 1000);
			InputStream is = con.getInputStream();
			BufferedImage bufferedImage = ImageIO.read(is);

			// 获取宽度和高度,如果获取时有问题,则会报异常
			int width = bufferedImage.getWidth();
			int height = bufferedImage.getHeight();
			picUpload.setWidth(width + "");
			picUpload.setHeight(height + "");

			String localPath = "E:/jt-upload/images/";

			String datePath = new SimpleDateFormat("yyyy/MM/dd/HH/mm").format(new Date());
			String urlPath = "http://image.jt.com/images/";
			// D:/jt-upload/images/2017/07/25/13/40
			// localPath += datePath + "/" + filename;
			localPath += datePath;
			System.out.println(localPath);
			// http://image.jt.com/images/2017/07/25/13/40
			urlPath += datePath + "/" + filename;
			System.out.println(urlPath);

			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			ImageIO.write(bufferedImage, "jpg", baos);

			is = new ByteArrayInputStream(baos.toByteArray());
			// InputStream stream = new FileInputStream(new File("E:\\3.jpg"));
			// 1K的数据缓冲
			byte[] bs = new byte[1024 * 1024 * 1];
			// 读取到的数据长度
			int len;
			// 输出的文件流
			File file = new File(localPath);
			// // 判断文件夹是否存在
			if (!file.exists()) {
				file.mkdirs();// 创建多个文件夹
			}
			String filePath = file.getPath() + "/" + filename;
			// OutputStream os = new FileOutputStream(file.getPath() + "/" + filename);
			// OutputStream os = new FileOutputStream(file.getPath() + "/" + filename);
			OutputStream os = new FileOutputStream(filePath);

			// 开始读取
			// BufferedInputStream bis = new BufferedInputStream(is);

			while ((len = is.read(bs)) != -1) {
				os.write(bs, 0, len);
			}
			// 完毕，关闭所有链接
			os.close();

			is.close();

			picUpload.setUrl(urlPath);
			logger.info("~~~~~~~~~~~~文件写入成功" + localPath);

		} catch (Exception e) {
			e.printStackTrace();
			logger.error("~~~~~该文件是一个非法文件");
			picUpload.setError(1);
			return picUpload;
		}

		return picUpload;
	}
}

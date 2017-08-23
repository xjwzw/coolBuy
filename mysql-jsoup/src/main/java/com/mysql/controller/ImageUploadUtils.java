package com.mysql.controller;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.imageio.ImageIO;

import org.apache.log4j.Logger;

public class ImageUploadUtils {

	private static final Logger logger = Logger.getLogger(ImageUploadUtils.class);

	/**
	 * 
	 * @param imgurl
	 *            "http://a.vpimg4.com/upload/merchandise/pdcvis/2017/05/31/39/495b7b85-827c-4f01-829b-f28813c9faf8.jpg"
	 * @return
	 */
	public static String getImageUrlForMysql(String imgurl) {
		/// 495b7b85-827c-4f01-829b-f28813c9faf8.jpg
		// 1.获取后缀名称
		String endName = imgurl.substring(imgurl.lastIndexOf("."));
		// 2.获取文件名称
		String filename = imgurl.substring(imgurl.lastIndexOf("/") + 1, imgurl.length());
		// System.out.println(filename);
		// 3.判断是否为图片格式
		if (!endName.matches("^.*(jpg|png|gif)$")) {
			logger.error("~~~~~~~~文件后缀名不符合图片格式");
			System.err.println("~~~~~~~~文件后缀名不符合图片格式");
			return null;
		}
		// 4.判断文件是否为一个正确的图片
		try {
			//获取网址URL
			URL url = new URL(imgurl);
			URLConnection con = url.openConnection();
			con.setConnectTimeout(5 * 1000);
			//转换成输入流
			InputStream is = con.getInputStream();
			//读取网络图片
			BufferedImage bufferedImage = ImageIO.read(is);

			// 获取宽度和高度,如果获取时有问题,则会报异常
			bufferedImage.getWidth();
			bufferedImage.getHeight();

			String localPath = "D:/kubby-upload/images/";
			String datePath = new SimpleDateFormat("yyyy/MM/dd/HH/mm").format(new Date());
			String urlPath = "http://image.kubby.com/images/";
			// D:/kubby-upload/images/2017/07/25/13/40
			localPath += datePath;
			// http://image.kubby.com/2017/07/25/13/40
			urlPath += datePath + "/" + filename;
            
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			ImageIO.write(bufferedImage, "jpg", baos);

			is = new ByteArrayInputStream(baos.toByteArray());
			// 1M的数据缓冲
			byte[] bs = new byte[1024 * 1024 * 1];
			// 读取到的数据长度
			int len;
			// 输出的文件流
			File file = new File(localPath);
			// // 判断文件夹是否存在
			if (!file.exists()) {
				// 创建多个文件夹
				file.mkdirs();
			}
			String filePath = file.getPath() + "/" + filename;
			OutputStream os = new FileOutputStream(filePath);

			// 开始读取
			BufferedInputStream bis = new BufferedInputStream(is);

			while ((len = bis.read(bs)) != -1) {
				os.write(bs, 0, len);
			}
			// 完毕，关闭所有链接
			// os.close();
			// is.close();
			logger.info("~~~~~~~~~~~~文件写入成功" + localPath);
			return urlPath;
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("~~~~~该文件是一个非法文件");
			return null;
		}

	}

}

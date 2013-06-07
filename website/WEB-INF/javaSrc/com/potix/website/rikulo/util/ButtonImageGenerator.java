package com.potix.website.rikulo.util;

import java.awt.image.BufferedImage;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

public class ButtonImageGenerator {
	public static void main(String[] args) {
		
		File buttonBackground = new File("resource/img/template/button-background.png");
		File targetFile = new File("img/button-backhome.png");
		
		int buttonWidth = 155;//change width here
		int cornerWidth = 5;
		int centerWidth = 31;
		int rCornerPos = cornerWidth + centerWidth;
		int buttonHeight = 40;
		int hovetButtonHeight = 39;
		
		int targetButtonRCornerPos = buttonWidth - cornerWidth;
		
		try {
			BufferedImage srcImg = ImageIO.read(buttonBackground);
			
			BufferedImage tarImage = new BufferedImage(buttonWidth, srcImg.getHeight(), BufferedImage.TYPE_4BYTE_ABGR);
			
			Raster srcImgRaster = srcImg.getData();
			WritableRaster tarRaster = tarImage.getRaster();
			
			//image frames
			Raster leftCorner = srcImgRaster.createChild(0, 0, cornerWidth, buttonHeight, 0, 0, null);
			Raster center = srcImgRaster.createChild(cornerWidth, 0, centerWidth, buttonHeight, 0, 0, null);
			Raster rightCorner = srcImgRaster.createChild(rCornerPos, 0, cornerWidth, buttonHeight, 0, 0, null);
			
			Raster leftHoverCorner = srcImgRaster.createChild(0, buttonHeight, cornerWidth, hovetButtonHeight, 0, 0, null);
			Raster hoverCenter = srcImgRaster.createChild(cornerWidth, buttonHeight, centerWidth, hovetButtonHeight, 0, 0, null);
			Raster rightHoverCorner = srcImgRaster.createChild(rCornerPos, buttonHeight, cornerWidth, hovetButtonHeight, 0, 0, null);
			
			//start render image;
			tarRaster.setRect(0, 0, leftCorner);
			tarRaster.setRect(0, buttonHeight, leftHoverCorner);
			int targetCenterWidth = buttonWidth - cornerWidth * 2;
			
			int repeat =  targetCenterWidth / centerWidth;
			int latestCenter =  targetCenterWidth % centerWidth;
			
			int pos = 5;
			for (int i = 0; i < repeat; i++, pos += centerWidth) {
				tarRaster.setRect(pos, 0, center);
				tarRaster.setRect(pos, buttonHeight, hoverCenter);
			}
			
			//latest center image
			if (latestCenter > 0) {
				tarRaster.setRect(pos, 0, srcImgRaster.createChild(cornerWidth, 0, latestCenter, buttonHeight, 0, 0, null));
				tarRaster.setRect(pos, buttonHeight, srcImgRaster.createChild(cornerWidth, buttonHeight, latestCenter, hovetButtonHeight, 0, 0, null));
			}
			
			
			tarRaster.setRect(targetButtonRCornerPos, 0, rightCorner);
			tarRaster.setRect(targetButtonRCornerPos, buttonHeight, rightHoverCorner);
			
			ImageIO.write(tarImage, "png", targetFile);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}

package cap.uitl;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.Random;

public class AuthCode {
    public static final int AUTHCODE_LENGTH = 5; //验证码长度 02
    public static final int SINGLECODE_WIDTH = 15; //单个验证码宽度 03.
    public static final int SINGLECODE_HEIGHT = 30; //单个验证码高度 04.
    public static final int SINGLECODE_GAP = 4; //单个验证码之间间隔 05.
    public static final int IMG_WIDTH = AUTHCODE_LENGTH * (SINGLECODE_WIDTH +
            SINGLECODE_GAP);
    public static final int IMG_HEIGHT = SINGLECODE_HEIGHT;

    public static final String baseString = "0123456789";

    public static String getAuthCode() {
        String authCode = "";
        for (int i = 0; i < AUTHCODE_LENGTH; i++) {
            int index = new Random().nextInt(10);
            char c = baseString.charAt(index);
            authCode += c;
        }
        return authCode;
    }

    public static BufferedImage getAuthCodeImg(String authCode) {
        BufferedImage img = new BufferedImage(IMG_WIDTH, IMG_HEIGHT, BufferedImage.TYPE_3BYTE_BGR);
        Graphics g = img.getGraphics();
        g.setColor(Color.yellow);
        g.fillRect(0, 0, IMG_WIDTH, IMG_HEIGHT);

        g.setColor(Color.black);
        g.setFont(new Font("宋体", Font.PLAIN, SINGLECODE_HEIGHT + 5));

        for (int i = 0; i < authCode.toCharArray().length; i++) {
            char c = authCode.charAt(i);
            g.drawString(c + "", i * (SINGLECODE_WIDTH + SINGLECODE_GAP) + SINGLECODE_GAP/2, IMG_HEIGHT);

        }
        Random random = new Random();
        //干扰素
        for (int i = 0; i < 20; i++) {
            int x = random.nextInt(IMG_WIDTH);
            int y = random.nextInt(IMG_HEIGHT);
            int x2 = random.nextInt(IMG_WIDTH);
            int y2 = random.nextInt(IMG_HEIGHT);
            g.drawLine(x, y, x + x2, y + y2);
        }
        return img;
    }
}

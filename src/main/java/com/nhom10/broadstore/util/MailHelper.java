package com.nhom10.broadstore.util;

import com.nhom10.broadstore.beans.Order;
import com.nhom10.broadstore.beans.OrderItem;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Properties;

public class MailHelper {

    private static final String from = "boardstorevn@gmail.com";
    private static final String user = "boardstorevn@gmail.com";
    private static final String pass = "hrlnybkzatluejqw";


    //    vsbduipjoxstnoae second pass
    public static String sendMail(String id, String to, String from,
                                  String subject, String body, boolean content) throws MessagingException, UnsupportedEncodingException {
        String status = null;

        // acquire a secure SMTPs session
        Properties pros = new Properties();
        pros.put("mail.transport.protocol", "smtps");
        pros.put("mail.smtps.host", "smtp.gmail.com");
        pros.put("mail.smtps.port", 465);
        pros.put("mail.smtps.auth", "true");
        pros.put("mail.smtps.quitwait", "false");
        Session session
                = Session.getDefaultInstance(pros);
        session.setDebug(true);
        // Wrap a message in session
        Message message = new MimeMessage(session);
        message.setSubject(subject);

        if (content) {
            message.setContent(body, "text/html");
        } else {
            message.setText(body);
        }
        // specify E-mail address of Sender and Receiver
        Address sender = new InternetAddress(from, id);
        Address receiver = new InternetAddress(to);
        message.setFrom(sender);
        message.setRecipient(Message.RecipientType.TO,
                receiver);
        // sending an E-mail
        try (Transport tt = session.getTransport()) {
            // acqruiring a connection to remote server
            tt.connect(from, pass);
            tt.sendMessage(message,
                    message.getAllRecipients());
            status = "E-Mail Sent Successfully";
        }

        // return the status of email
        return status;
    }

    public static void sendActiveUserMail(String to, String link) throws IOException, MessagingException {


        String content = HtmlText.htmlActive;
        String replayLink = ":link:";

        content = content.replaceAll(replayLink, link);

        sendMail("", to, from, "Active Account", content, true);
    }

    public static void sendResetPassword(String to, String link) throws IOException, MessagingException {
        String content = HtmlText.htmlForgot;
        String replayLink = ":link:";

        content = content.replaceAll(replayLink, link);

        sendMail("", to, from, "Reset password", content, true);
    }

    public static void sentOrderMail(String to, Order order, List<OrderItem> itemList) throws IOException, MessagingException {

        String content = HtmlText.htmlOrder;

        content = content.replace(":name:", order.getName()).replaceAll(":email:", order.getEmail())
                .replaceAll(":phone:", order.getPhone()).replaceAll(":address:", order.getAddress());

        String itemHtml = "<tr>\n" +
                "<td style=\"padding: 5px 15px 5px 0;\">:item</td>\n" +
                "<td style=\"padding: 0 15px;\">:quantity</td>\n" +
                "<td style=\"padding: 0 0 0 15px;\" align=\"right\">$:price</td>\n" +
                "</tr>";
        String lisItemHtml = "";
        for (OrderItem item : itemList) {
            lisItemHtml += itemHtml.replaceAll(":item", item.getProduct().getName())
                    .replaceAll(":quantity", item.getQuantity() + "")
                    .replaceAll(":price", item.getPrice() + "");
        }
        content = content.replaceAll(":listItem:", lisItemHtml);
        content = content.replaceAll(":ship:", order.getShipPrice() + "");
        content = content.replaceAll(":total:", 0 + "");
        sendMail("", to, from, "Order", content, true);
    }
}

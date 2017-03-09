/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.util;

public class MarkdownUtil {
    public static String convertHtmlTags(String charSequence) {
        String string2 = charSequence.replaceAll("<code>", "<tt>").replaceAll("</code>", "</tt>");
        int n2 = string2.indexOf("<pre>");
        int n3 = -6;
        charSequence = new StringBuilder();
        while (n2 != -1) {
            charSequence = charSequence.append(string2.substring(n3 + 6, n2));
            n3 = string2.indexOf("</pre>", n2);
            charSequence = charSequence.append(string2.substring(n2, n3).replaceAll("\n", "<br>")).append("</pre>");
            n2 = string2.indexOf("<pre>", n3);
        }
        return charSequence.append(string2.substring(n3 + 6)).toString().replaceAll("<ul>", "<br>").replaceAll("</ul>", "").replaceAll("<ol>", "<br>").replaceAll("</ol>", "").replaceAll("<li>(<p>)?", "&#8226; ").replaceAll("(</p>)?</li>", "<br>").replaceAll("</p>", "").replaceAll("<p>", "").replaceAll("\\n\\n", "<br>").replaceAll("<strong>", "<b>").replaceAll("</strong>", "</b>").replaceAll("<em>", "<i>").replaceAll("</em>", "</i>");
    }

    public static String preprocessMarkdown(String string2) {
        return string2.replaceAll("\\n\\n\\n", "<br><br>").replaceAll("\\n\\n", "<br><br>").replaceAll("\\n", "<br>");
    }
}


/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.Spannable
 *  android.text.SpannableString
 *  android.text.method.LinkMovementMethod
 *  android.text.method.MovementMethod
 *  android.text.style.URLSpan
 *  android.text.util.Linkify
 *  android.text.util.Linkify$MatchFilter
 *  android.text.util.Linkify$TransformFilter
 *  android.webkit.WebView
 *  android.widget.TextView
 */
package android.support.v4.text.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.PatternsCompat;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.webkit.WebView;
import android.widget.TextView;
import java.io.UnsupportedEncodingException;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class LinkifyCompat {
    private static final Comparator<LinkSpec> COMPARATOR;
    private static final String[] EMPTY_STRING;

    static {
        EMPTY_STRING = new String[0];
        COMPARATOR = new Comparator<LinkSpec>(){

            /*
             * Enabled aggressive block sorting
             * Lifted jumps to return sites
             */
            @Override
            public final int compare(LinkSpec linkSpec, LinkSpec linkSpec2) {
                if (linkSpec.start < linkSpec2.start) {
                    return -1;
                }
                if (linkSpec.start > linkSpec2.start) {
                    return 1;
                }
                if (linkSpec.end < linkSpec2.end) {
                    return 1;
                }
                if (linkSpec.end > linkSpec2.end) return -1;
                return 0;
            }
        };
    }

    private LinkifyCompat() {
    }

    private static void addLinkMovementMethod(@NonNull TextView textView) {
        MovementMethod movementMethod = textView.getMovementMethod();
        if ((movementMethod == null || !(movementMethod instanceof LinkMovementMethod)) && textView.getLinksClickable()) {
            textView.setMovementMethod(LinkMovementMethod.getInstance());
        }
    }

    public static final void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String string2) {
        LinkifyCompat.addLinks(textView, pattern, string2, null, null, null);
    }

    public static final void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String string2, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        LinkifyCompat.addLinks(textView, pattern, string2, null, matchFilter, transformFilter);
    }

    public static final void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String string2, @Nullable String[] arrstring, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        SpannableString spannableString = SpannableString.valueOf((CharSequence)textView.getText());
        if (LinkifyCompat.addLinks((Spannable)spannableString, pattern, string2, arrstring, matchFilter, transformFilter)) {
            textView.setText((CharSequence)spannableString);
            LinkifyCompat.addLinkMovementMethod(textView);
        }
    }

    public static final boolean addLinks(@NonNull Spannable spannable, int n2) {
        Object object;
        if (n2 == 0) {
            return false;
        }
        Iterator iterator = (URLSpan[])spannable.getSpans(0, spannable.length(), (Class)URLSpan.class);
        for (int i2 = iterator.length - 1; i2 >= 0; --i2) {
            spannable.removeSpan((Object)iterator[i2]);
        }
        if ((n2 & 4) != 0) {
            Linkify.addLinks((Spannable)spannable, (int)4);
        }
        iterator = new ArrayList();
        if ((n2 & 1) != 0) {
            object = PatternsCompat.AUTOLINK_WEB_URL;
            Linkify.MatchFilter matchFilter = Linkify.sUrlMatchFilter;
            LinkifyCompat.gatherLinks(iterator, spannable, (Pattern)object, new String[]{"http://", "https://", "rtsp://"}, matchFilter, null);
        }
        if ((n2 & 2) != 0) {
            LinkifyCompat.gatherLinks(iterator, spannable, PatternsCompat.AUTOLINK_EMAIL_ADDRESS, new String[]{"mailto:"}, null, null);
        }
        if ((n2 & 8) != 0) {
            LinkifyCompat.gatherMapLinks(iterator, spannable);
        }
        LinkifyCompat.pruneOverlaps(iterator, spannable);
        if (iterator.size() == 0) {
            return false;
        }
        iterator = iterator.iterator();
        while (iterator.hasNext()) {
            object = (LinkSpec)iterator.next();
            if (object.frameworkAddedSpan != null) continue;
            LinkifyCompat.applyLink(object.url, object.start, object.end, spannable);
        }
        return true;
    }

    public static final boolean addLinks(@NonNull Spannable spannable, @NonNull Pattern pattern, @Nullable String string2) {
        return LinkifyCompat.addLinks(spannable, pattern, string2, null, null, null);
    }

    public static final boolean addLinks(@NonNull Spannable spannable, @NonNull Pattern pattern, @Nullable String string2, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        return LinkifyCompat.addLinks(spannable, pattern, string2, null, matchFilter, transformFilter);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static final boolean addLinks(@NonNull Spannable spannable, @NonNull Pattern object, @Nullable String arrstring, @Nullable String[] object2, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        int n2;
        Object object3;
        block6 : {
            object3 = arrstring;
            if (arrstring == null) {
                object3 = "";
            }
            if (object2 != null) {
                arrstring = object2;
                if (object2.length >= 1) break block6;
            }
            arrstring = EMPTY_STRING;
        }
        String[] arrstring2 = new String[arrstring.length + 1];
        arrstring2[0] = object3.toLowerCase(Locale.ROOT);
        for (n2 = 0; n2 < arrstring.length; ++n2) {
            object2 = arrstring[n2];
            object2 = object2 == null ? "" : object2.toLowerCase(Locale.ROOT);
            arrstring2[n2 + 1] = object2;
        }
        boolean bl = false;
        object = object.matcher((CharSequence)spannable);
        while (object.find()) {
            n2 = object.start();
            int n3 = object.end();
            boolean bl2 = true;
            if (matchFilter != null && !(bl2 = matchFilter.acceptMatch((CharSequence)spannable, n2, n3))) continue;
            LinkifyCompat.applyLink(LinkifyCompat.makeUrl(object.group(0), arrstring2, (Matcher)object, transformFilter), n2, n3, spannable);
            bl = true;
        }
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static final boolean addLinks(@NonNull TextView textView, int n2) {
        if (n2 == 0) return false;
        CharSequence charSequence = textView.getText();
        if (charSequence instanceof Spannable) {
            if (!LinkifyCompat.addLinks((Spannable)charSequence, n2)) return false;
            {
                LinkifyCompat.addLinkMovementMethod(textView);
                return true;
            }
        }
        if (!LinkifyCompat.addLinks((Spannable)(charSequence = SpannableString.valueOf((CharSequence)charSequence)), n2)) {
            return false;
        }
        LinkifyCompat.addLinkMovementMethod(textView);
        textView.setText(charSequence);
        return true;
    }

    private static void applyLink(String string2, int n2, int n3, Spannable spannable) {
        spannable.setSpan((Object)new URLSpan(string2), n2, n3, 33);
    }

    private static void gatherLinks(ArrayList<LinkSpec> arrayList, Spannable spannable, Pattern object, String[] arrstring, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
        object = object.matcher((CharSequence)spannable);
        while (object.find()) {
            int n2 = object.start();
            int n3 = object.end();
            if (matchFilter != null && !matchFilter.acceptMatch((CharSequence)spannable, n2, n3)) continue;
            LinkSpec linkSpec = new LinkSpec();
            linkSpec.url = LinkifyCompat.makeUrl(object.group(0), arrstring, (Matcher)object, transformFilter);
            linkSpec.start = n2;
            linkSpec.end = n3;
            arrayList.add(linkSpec);
        }
    }

    private static final void gatherMapLinks(ArrayList<LinkSpec> arrayList, Spannable object) {
        object = object.toString();
        int n2 = 0;
        do {
            String string2;
            int n3;
            block8 : {
                try {
                    string2 = WebView.findAddress((String)object);
                    if (string2 == null) break;
                }
                catch (UnsupportedOperationException var0_1) {
                    return;
                }
                n3 = object.indexOf(string2);
                if (n3 >= 0) break block8;
                return;
            }
            LinkSpec linkSpec = new LinkSpec();
            int n4 = n3 + string2.length();
            linkSpec.start = n2 + n3;
            linkSpec.end = n2 + n4;
            object = object.substring(n4);
            n2 += n4;
            try {
                string2 = URLEncoder.encode(string2, "UTF-8");
                linkSpec.url = "geo:0,0?q=" + string2;
                arrayList.add(linkSpec);
            }
            catch (UnsupportedEncodingException var5_7) {}
            continue;
            break;
        } while (true);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static String makeUrl(@NonNull String var0, @NonNull String[] var1_1, Matcher var2_2, @Nullable Linkify.TransformFilter var3_3) {
        var7_4 = var0;
        if (var3_3 != null) {
            var7_4 = var3_3.transformUrl((Matcher)var2_2, var0);
        }
        var6_5 = false;
        var4_6 = 0;
        do {
            var5_7 = var6_5;
            var0 = var7_4;
            if (var4_6 >= var1_1.length) ** GOTO lbl16
            if (var7_4.regionMatches(true, 0, var1_1[var4_6], 0, var1_1[var4_6].length())) {
                var5_7 = var6_5 = true;
                var0 = var7_4;
                if (!var7_4.regionMatches(false, 0, var1_1[var4_6], 0, var1_1[var4_6].length())) {
                    var0 = var1_1[var4_6] + var7_4.substring(var1_1[var4_6].length());
                    var5_7 = var6_5;
                }
lbl16: // 4 sources:
                var2_2 = var0;
                if (var5_7 != false) return var2_2;
                var2_2 = var0;
                if (var1_1.length <= 0) return var2_2;
                return var1_1[0] + var0;
            }
            ++var4_6;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static final void pruneOverlaps(ArrayList<LinkSpec> arrayList, Spannable spannable) {
        int n2;
        LinkSpec linkSpec;
        Object object = (URLSpan[])spannable.getSpans(0, spannable.length(), (Class)URLSpan.class);
        for (n2 = 0; n2 < object.length; ++n2) {
            linkSpec = new LinkSpec();
            linkSpec.frameworkAddedSpan = object[n2];
            linkSpec.start = spannable.getSpanStart((Object)object[n2]);
            linkSpec.end = spannable.getSpanEnd(object[n2]);
            arrayList.add(linkSpec);
        }
        Collections.sort(arrayList, COMPARATOR);
        int n3 = arrayList.size();
        int n4 = 0;
        while (n4 < n3 - 1) {
            object = arrayList.get(n4);
            linkSpec = arrayList.get(n4 + 1);
            n2 = -1;
            if (object.start <= linkSpec.start && object.end > linkSpec.start) {
                if (linkSpec.end <= object.end) {
                    n2 = n4 + 1;
                } else if (object.end - object.start > linkSpec.end - linkSpec.start) {
                    n2 = n4 + 1;
                } else if (object.end - object.start < linkSpec.end - linkSpec.start) {
                    n2 = n4;
                }
                if (n2 != -1) {
                    object = arrayList.get((int)n2).frameworkAddedSpan;
                    if (object != null) {
                        spannable.removeSpan(object);
                    }
                    arrayList.remove(n2);
                    --n3;
                    continue;
                }
            }
            ++n4;
        }
    }

    private static class LinkSpec {
        int end;
        URLSpan frameworkAddedSpan;
        int start;
        String url;

        LinkSpec() {
        }
    }

    @Retention(value=RetentionPolicy.SOURCE)
    public static @interface LinkifyMask {
    }

}


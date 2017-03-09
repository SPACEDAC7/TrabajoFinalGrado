/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.JsonToken
 *  android.util.MalformedJsonException
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.android.util;

import android.util.JsonToken;
import android.util.MalformedJsonException;
import com.buzzfeed.android.util.StringPool;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class BuzzFeedJsonReader
implements Closeable {
    private static final String FALSE = "false";
    static final String TAG = BuzzFeedJsonReader.class.getSimpleName();
    private static final String TRUE = "true";
    private final char[] buffer = new char[1024];
    private int bufferStartColumn = 1;
    private int bufferStartLine = 1;
    private final Reader in;
    private boolean lenient = false;
    private int limit = 0;
    private String name;
    private int pos = 0;
    private boolean skipping;
    private final List<JsonScope> stack = new ArrayList<JsonScope>();
    private final StringPool stringPool = new StringPool();
    private JsonToken token;
    private String value;
    private int valueLength;
    private int valuePos;

    public BuzzFeedJsonReader(Reader reader) {
        this.push(JsonScope.EMPTY_DOCUMENT);
        this.skipping = false;
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.in = reader;
    }

    private JsonToken advance() throws IOException {
        this.peek();
        JsonToken jsonToken = this.token;
        this.token = null;
        this.value = null;
        this.name = null;
        return jsonToken;
    }

    private void checkLenient() throws IOException {
        if (!this.lenient) {
            throw this.syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private JsonToken decodeLiteral() throws IOException {
        if (this.valuePos == -1) {
            return JsonToken.STRING;
        }
        if (!(this.valueLength != 4 || 'n' != this.buffer[this.valuePos] && 'N' != this.buffer[this.valuePos] || 'u' != this.buffer[this.valuePos + 1] && 'U' != this.buffer[this.valuePos + 1] || 'l' != this.buffer[this.valuePos + 2] && 'L' != this.buffer[this.valuePos + 2] || 'l' != this.buffer[this.valuePos + 3] && 'L' != this.buffer[this.valuePos + 3])) {
            this.value = "null";
            return JsonToken.NULL;
        }
        if (!(this.valueLength != 4 || 't' != this.buffer[this.valuePos] && 'T' != this.buffer[this.valuePos] || 'r' != this.buffer[this.valuePos + 1] && 'R' != this.buffer[this.valuePos + 1] || 'u' != this.buffer[this.valuePos + 2] && 'U' != this.buffer[this.valuePos + 2] || 'e' != this.buffer[this.valuePos + 3] && 'E' != this.buffer[this.valuePos + 3])) {
            this.value = "true";
            return JsonToken.BOOLEAN;
        }
        if (!(this.valueLength != 5 || 'f' != this.buffer[this.valuePos] && 'F' != this.buffer[this.valuePos] || 'a' != this.buffer[this.valuePos + 1] && 'A' != this.buffer[this.valuePos + 1] || 'l' != this.buffer[this.valuePos + 2] && 'L' != this.buffer[this.valuePos + 2] || 's' != this.buffer[this.valuePos + 3] && 'S' != this.buffer[this.valuePos + 3] || 'e' != this.buffer[this.valuePos + 4] && 'E' != this.buffer[this.valuePos + 4])) {
            this.value = "false";
            return JsonToken.BOOLEAN;
        }
        this.value = this.stringPool.get(this.buffer, this.valuePos, this.valueLength);
        return this.decodeNumber(this.buffer, this.valuePos, this.valueLength);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private JsonToken decodeNumber(char[] var1_1, int var2_2, int var3_3) {
        var5_4 = var2_2;
        var6_6 = var7_5 = var1_1[var5_4];
        var4_7 = var5_4;
        if (var7_5 == 45) {
            var4_7 = var5_4 + 1;
            var6_6 = var1_1[var4_7];
        }
        if (var6_6 == 48) {
            var6_6 = var1_1[++var4_7];
        } else {
            if (var6_6 < 49) return JsonToken.STRING;
            if (var6_6 > 57) return JsonToken.STRING;
            var7_5 = var4_7 + 1;
            var5_4 = var1_1[var7_5];
            do {
                var6_6 = var5_4;
                var4_7 = var7_5;
                if (var5_4 < 48) break;
                var6_6 = var5_4;
                var4_7 = var7_5++;
                if (var5_4 > 57) break;
                var5_4 = var1_1[var7_5];
            } while (true);
        }
        var7_5 = var6_6;
        var5_4 = var4_7;
        if (var6_6 == 46) {
            var6_6 = var4_7 + 1;
            var4_7 = var1_1[var6_6];
            do {
                var7_5 = var4_7;
                var5_4 = var6_6;
                if (var4_7 < 48) break;
                var7_5 = var4_7;
                var5_4 = var6_6++;
                if (var4_7 > 57) break;
                var4_7 = var1_1[var6_6];
            } while (true);
        }
        if (var7_5 == 101) ** GOTO lbl40
        var6_6 = var5_4;
        if (var7_5 != 69) ** GOTO lbl56
lbl40: // 2 sources:
        if ((var7_5 = var1_1[var6_6 = var5_4 + 1]) == 43) ** GOTO lbl-1000
        var5_4 = var7_5;
        var4_7 = var6_6;
        if (var7_5 == 45) lbl-1000: // 2 sources:
        {
            var4_7 = var6_6 + 1;
            var5_4 = var1_1[var4_7];
        }
        if (var5_4 < 48) return JsonToken.STRING;
        if (var5_4 > 57) return JsonToken.STRING;
        var5_4 = var1_1[++var4_7];
        do {
            var6_6 = var4_7;
            if (var5_4 < 48) break;
            var6_6 = var4_7++;
            if (var5_4 > 57) break;
            var5_4 = var1_1[var4_7];
        } while (true);
lbl56: // 3 sources:
        if (var6_6 != var2_2 + var3_3) return JsonToken.STRING;
        return JsonToken.NUMBER;
    }

    private void expect(JsonToken jsonToken) throws IOException {
        this.peek();
        if (this.token != jsonToken) {
            throw new IllegalStateException("Expected " + (Object)jsonToken + " but was " + (Object)this.peek());
        }
        this.advance();
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean fillBuffer(int n2) throws IOException {
        int n3;
        for (n3 = 0; n3 < this.pos; ++n3) {
            if (this.buffer[n3] == '\n') {
                ++this.bufferStartLine;
                this.bufferStartColumn = 1;
                continue;
            }
            ++this.bufferStartColumn;
        }
        if (this.limit != this.pos) {
            this.limit -= this.pos;
            System.arraycopy(this.buffer, this.pos, this.buffer, 0, this.limit);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            if ((n3 = this.in.read(this.buffer, this.limit, this.buffer.length - this.limit)) == -1) {
                return false;
            }
            this.limit += n3;
            if (this.bufferStartLine != 1 || this.bufferStartColumn != 1 || this.limit <= 0 || this.buffer[0] != '\ufeff') continue;
            ++this.pos;
            --this.bufferStartColumn;
        } while (this.limit < n2);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private int getColumnNumber() {
        int n2 = this.bufferStartColumn;
        int n3 = 0;
        while (n3 < this.pos) {
            n2 = this.buffer[n3] == '\n' ? 1 : ++n2;
            ++n3;
        }
        return n2;
    }

    private int getLineNumber() {
        int n2 = this.bufferStartLine;
        for (int i2 = 0; i2 < this.pos; ++i2) {
            int n3 = n2;
            if (this.buffer[i2] == '\n') {
                n3 = n2 + 1;
            }
            n2 = n3;
        }
        return n2;
    }

    private CharSequence getSnippet() {
        StringBuilder stringBuilder = new StringBuilder();
        int n2 = Math.min(this.pos, 20);
        stringBuilder.append(this.buffer, this.pos - n2, n2);
        n2 = Math.min(this.limit - this.pos, 20);
        stringBuilder.append(this.buffer, this.pos, n2);
        return stringBuilder;
    }

    /*
     * Enabled aggressive block sorting
     */
    private JsonToken nextInArray(boolean bl) throws IOException {
        JsonToken jsonToken;
        if (bl) {
            this.replaceTop(JsonScope.NONEMPTY_ARRAY);
        } else {
            switch (this.nextNonWhitespace()) {
                case 44: {
                    break;
                }
                default: {
                    throw this.syntaxError("Unterminated array");
                }
                case 93: {
                    JsonToken jsonToken2;
                    this.pop();
                    this.token = jsonToken2 = JsonToken.END_ARRAY;
                    return jsonToken2;
                }
                case 59: {
                    this.checkLenient();
                }
            }
        }
        switch (this.nextNonWhitespace()) {
            default: {
                --this.pos;
                return this.nextValue();
            }
            case 93: {
                JsonToken jsonToken3;
                if (!bl) break;
                this.pop();
                this.token = jsonToken3 = JsonToken.END_ARRAY;
                return jsonToken3;
            }
            case 44: 
            case 59: 
        }
        this.checkLenient();
        --this.pos;
        this.value = "null";
        this.token = jsonToken = JsonToken.NULL;
        return jsonToken;
    }

    /*
     * Exception decompiling
     */
    private JsonToken nextInObject(boolean var1_1) throws IOException {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [8[CASE]], but top level block is 3[SWITCH]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:394)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:446)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2869)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:817)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled aggressive block sorting
     */
    private String nextLiteral(boolean bl) throws IOException {
        int n2;
        StringBuilder stringBuilder;
        void var4_5;
        Object var4_2 = null;
        this.valuePos = -1;
        this.valueLength = 0;
        int n3 = 0;
        block4 : do {
            void var4_3;
            if (this.pos + n3 < this.limit) {
                stringBuilder = var4_3;
                n2 = n3;
                switch (this.buffer[this.pos + n3]) {
                    default: {
                        ++n3;
                        continue block4;
                    }
                    case '#': 
                    case '/': 
                    case ';': 
                    case '=': 
                    case '\\': {
                        this.checkLenient();
                        n2 = n3;
                        stringBuilder = var4_3;
                    }
                    case '\t': 
                    case '\n': 
                    case '\f': 
                    case '\r': 
                    case ' ': 
                    case ',': 
                    case ':': 
                    case '[': 
                    case ']': 
                    case '{': 
                    case '}': 
                }
                break;
            }
            if (n3 < this.buffer.length) {
                if (this.fillBuffer(n3 + 1)) continue;
                this.buffer[this.limit] = '\u0000';
                stringBuilder = var4_3;
                n2 = n3;
                break;
            }
            stringBuilder = var4_3;
            if (var4_3 == null) {
                stringBuilder = new StringBuilder();
            }
            stringBuilder.append(this.buffer, this.pos, n3);
            this.valueLength += n3;
            this.pos += n3;
            n2 = 0;
            n3 = 0;
            StringBuilder stringBuilder2 = stringBuilder;
            if (!this.fillBuffer(1)) break;
        } while (true);
        if (bl && stringBuilder == null) {
            this.valuePos = this.pos;
            Object var4_4 = null;
        } else if (this.skipping) {
            String string2 = "skipped!";
        } else if (stringBuilder == null) {
            String string3 = this.stringPool.get(this.buffer, this.pos, n2);
        } else {
            stringBuilder.append(this.buffer, this.pos, n2);
            String string4 = stringBuilder.toString();
        }
        this.valueLength += n2;
        this.pos += n2;
        return var4_5;
    }

    /*
     * Enabled aggressive block sorting
     */
    private int nextNonWhitespace() throws IOException {
        int n2;
        block9 : do {
            if (this.pos >= this.limit && !this.fillBuffer(1)) {
                throw new EOFException("End of input");
            }
            char[] arrc = this.buffer;
            n2 = this.pos;
            this.pos = n2 + 1;
            n2 = arrc[n2];
            switch (n2) {
                case 9: 
                case 10: 
                case 13: 
                case 32: {
                    continue block9;
                }
                case 47: {
                    if (this.pos == this.limit && !this.fillBuffer(1)) break block9;
                    this.checkLenient();
                    switch (this.buffer[this.pos]) {
                        default: {
                            return n2;
                        }
                        case '*': {
                            ++this.pos;
                            if (!this.skipTo("*/")) {
                                throw this.syntaxError("Unterminated comment");
                            }
                            this.pos += 2;
                            continue block9;
                        }
                        case '/': 
                    }
                    ++this.pos;
                    this.skipToEndOfLine();
                    continue block9;
                }
                case 35: {
                    this.checkLenient();
                    this.skipToEndOfLine();
                    continue block9;
                }
            }
            break;
        } while (true);
        return n2;
    }

    private String nextString(char c2) throws IOException {
        return this.nextString(c2, true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private String nextString(char c2, boolean bl) throws IOException {
        TAG + ".nextString";
        Object object = null;
        do {
            Object object2;
            int n2 = this.pos;
            while (this.pos < this.limit) {
                object2 = this.buffer;
                Object object3 = this.pos;
                this.pos = object3 + 1;
                if ((object3 = (Object)object2[object3]) == c2) {
                    if (this.skipping) {
                        return "skipped!";
                    }
                    if (object == null) {
                        return this.stringPool.get(this.buffer, n2, this.pos - n2 - 1);
                    }
                    object.append(this.buffer, n2, this.pos - n2 - 1);
                    return object.toString();
                }
                if (object3 != 92) continue;
                object2 = object;
                if (object == null) {
                    object2 = new StringBuilder();
                }
                object2.append(this.buffer, n2, this.pos - n2 - 1);
                if (bl) {
                    object2.append(this.readEscapeCharacter());
                } else {
                    object2.append('\\');
                    this.readEscapeCharacterWithoutModification((StringBuilder)object2);
                }
                n2 = this.pos;
                object = object2;
            }
            object2 = object;
            if (object == null) {
                object2 = new StringBuilder();
            }
            object2.append(this.buffer, n2, this.pos - n2);
            object = object2;
        } while (this.fillBuffer(1));
        throw this.syntaxError("Unterminated string");
    }

    private JsonToken nextValue() throws IOException {
        JsonToken jsonToken;
        int n2 = this.nextNonWhitespace();
        switch (n2) {
            default: {
                --this.pos;
                return this.readLiteral();
            }
            case 123: {
                JsonToken jsonToken2;
                this.push(JsonScope.EMPTY_OBJECT);
                this.token = jsonToken2 = JsonToken.BEGIN_OBJECT;
                return jsonToken2;
            }
            case 91: {
                JsonToken jsonToken3;
                this.push(JsonScope.EMPTY_ARRAY);
                this.token = jsonToken3 = JsonToken.BEGIN_ARRAY;
                return jsonToken3;
            }
            case 39: {
                this.checkLenient();
            }
            case 34: 
        }
        this.value = this.nextString((char)n2);
        this.token = jsonToken = JsonToken.STRING;
        return jsonToken;
    }

    private JsonToken objectValue() throws IOException {
        switch (this.nextNonWhitespace()) {
            default: {
                throw this.syntaxError("Expected ':'");
            }
            case 61: {
                this.checkLenient();
                if (this.pos >= this.limit && !this.fillBuffer(1) || this.buffer[this.pos] != '>') break;
                ++this.pos;
            }
            case 58: 
        }
        this.replaceTop(JsonScope.NONEMPTY_OBJECT);
        return this.nextValue();
    }

    private JsonScope peekStack() {
        return this.stack.get(this.stack.size() - 1);
    }

    private JsonScope pop() {
        return this.stack.remove(this.stack.size() - 1);
    }

    private void push(JsonScope jsonScope) {
        this.stack.add(jsonScope);
    }

    private char readEscapeCharacter() throws IOException {
        if (this.pos == this.limit && !this.fillBuffer(1)) {
            throw this.syntaxError("Unterminated escape sequence");
        }
        Object object = this.buffer;
        int n2 = this.pos;
        this.pos = n2 + 1;
        char c2 = object[n2];
        switch (c2) {
            default: {
                return c2;
            }
            case 'u': {
                if (this.pos + 4 > this.limit && !this.fillBuffer(4)) {
                    throw this.syntaxError("Unterminated escape sequence");
                }
                object = this.stringPool.get(this.buffer, this.pos, 4);
                this.pos += 4;
                return (char)Integer.parseInt((String)object, 16);
            }
            case 't': {
                return '\t';
            }
            case 'b': {
                return '\b';
            }
            case 'n': {
                return '\n';
            }
            case 'r': {
                return '\r';
            }
            case 'f': 
        }
        return '\f';
    }

    private void readEscapeCharacterWithoutModification(StringBuilder stringBuilder) throws IOException {
        if (this.pos == this.limit && !this.fillBuffer(1)) {
            throw this.syntaxError("Unterminated escape sequence");
        }
        char[] arrc = this.buffer;
        int n2 = this.pos;
        this.pos = n2 + 1;
        char c2 = arrc[n2];
        switch (c2) {
            default: {
                stringBuilder.append(c2);
                return;
            }
            case 'u': 
        }
        if (this.pos + 4 > this.limit && !this.fillBuffer(4)) {
            throw this.syntaxError("Unterminated escape sequence");
        }
        stringBuilder.append(c2);
        stringBuilder.append(this.buffer, this.pos, 4);
        this.pos += 4;
    }

    private JsonToken readLiteral() throws IOException {
        this.value = this.nextLiteral(true);
        if (this.valueLength == 0) {
            throw this.syntaxError("Expected literal value");
        }
        this.token = this.decodeLiteral();
        if (this.token == JsonToken.STRING) {
            this.checkLenient();
        }
        return this.token;
    }

    private void replaceTop(JsonScope jsonScope) {
        this.stack.set(this.stack.size() - 1, jsonScope);
    }

    private boolean skipTo(String string2) throws IOException {
        block0 : while (this.pos + string2.length() <= this.limit || this.fillBuffer(string2.length())) {
            for (int i2 = 0; i2 < string2.length(); ++i2) {
                if (this.buffer[this.pos + i2] == string2.charAt(i2)) continue;
                ++this.pos;
                continue block0;
            }
            return true;
        }
        return false;
    }

    private void skipToEndOfLine() throws IOException {
        while (this.pos < this.limit || this.fillBuffer(1)) {
            char[] arrc = this.buffer;
            int n2 = this.pos;
            this.pos = n2 + 1;
            if ((n2 = arrc[n2]) != 13 && n2 != 10) continue;
        }
    }

    private IOException syntaxError(String string2) throws IOException {
        throw new MalformedJsonException(string2 + " at line " + this.getLineNumber() + " column " + this.getColumnNumber());
    }

    public void beginArray() throws IOException {
        this.expect(JsonToken.BEGIN_ARRAY);
    }

    public void beginObject() throws IOException {
        this.expect(JsonToken.BEGIN_OBJECT);
    }

    @Override
    public void close() throws IOException {
        this.value = null;
        this.token = null;
        this.stack.clear();
        this.stack.add(JsonScope.CLOSED);
        this.in.close();
    }

    public void endArray() throws IOException {
        this.expect(JsonToken.END_ARRAY);
    }

    public void endObject() throws IOException {
        this.expect(JsonToken.END_OBJECT);
    }

    /*
     * Exception decompiling
     */
    public JSONObject getArrayObjectAsJson() throws IOException, JSONException {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [0[TRYBLOCK]], but top level block is 1[TRYBLOCK]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:394)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:446)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2869)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:817)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    public boolean hasNext() throws IOException {
        this.peek();
        if (this.token != JsonToken.END_OBJECT && this.token != JsonToken.END_ARRAY) {
            return true;
        }
        return false;
    }

    public boolean isLenient() {
        return this.lenient;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean nextBoolean() throws IOException {
        this.peek();
        if (this.token != JsonToken.BOOLEAN) {
            throw new IllegalStateException("Expected a boolean but was " + (Object)this.token);
        }
        boolean bl = this.value == "true";
        this.advance();
        return bl;
    }

    public double nextDouble() throws IOException {
        this.peek();
        if (this.token != JsonToken.STRING && this.token != JsonToken.NUMBER) {
            throw new IllegalStateException("Expected a double but was " + (Object)this.token);
        }
        double d2 = Double.parseDouble(this.value);
        this.advance();
        return d2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public int nextInt() throws IOException {
        int n2;
        block3 : {
            this.peek();
            if (this.token != JsonToken.STRING && this.token != JsonToken.NUMBER) {
                throw new IllegalStateException("Expected an int but was " + (Object)this.token);
            }
            try {
                n2 = Integer.parseInt(this.value);
            }
            catch (NumberFormatException var5_2) {
                int n3;
                double d2 = Double.parseDouble(this.value);
                n2 = n3 = (int)d2;
                if ((double)n3 == d2) break block3;
                throw new NumberFormatException(this.value);
            }
        }
        this.advance();
        return n2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public long nextLong() throws IOException {
        long l2;
        block3 : {
            this.peek();
            if (this.token != JsonToken.STRING && this.token != JsonToken.NUMBER) {
                throw new IllegalStateException("Expected a long but was " + (Object)this.token);
            }
            try {
                l2 = Long.parseLong(this.value);
            }
            catch (NumberFormatException var7_2) {
                long l3;
                double d2 = Double.parseDouble(this.value);
                l2 = l3 = (long)d2;
                if ((double)l3 == d2) break block3;
                throw new NumberFormatException(this.value);
            }
        }
        this.advance();
        return l2;
    }

    public String nextName() throws IOException {
        this.peek();
        if (this.token != JsonToken.NAME) {
            throw new IllegalStateException("Expected a name but was " + (Object)this.peek());
        }
        String string2 = this.name;
        this.advance();
        return string2;
    }

    public void nextNull() throws IOException {
        this.peek();
        if (this.token != JsonToken.NULL) {
            throw new IllegalStateException("Expected null but was " + (Object)this.token);
        }
        this.advance();
    }

    public String nextString() throws IOException {
        this.peek();
        if (this.token != JsonToken.STRING && this.token != JsonToken.NUMBER) {
            throw new IllegalStateException("Expected a string but was " + (Object)this.peek());
        }
        String string2 = this.value;
        this.advance();
        return string2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public JsonToken peek() throws IOException {
        if (this.token != null) {
            return this.token;
        }
        switch (.$SwitchMap$com$buzzfeed$android$util$BuzzFeedJsonReader$JsonScope[this.peekStack().ordinal()]) {
            default: {
                throw new AssertionError();
            }
            case 1: {
                JsonToken jsonToken;
                this.replaceTop(JsonScope.NONEMPTY_DOCUMENT);
                JsonToken jsonToken2 = jsonToken = this.nextValue();
                if (this.lenient) return jsonToken2;
                jsonToken2 = jsonToken;
                if (this.token == JsonToken.BEGIN_ARRAY) return jsonToken2;
                jsonToken2 = jsonToken;
                if (this.token == JsonToken.BEGIN_OBJECT) return jsonToken2;
                throw new IOException("Expected JSON document to start with '[' or '{' but was " + (Object)this.token);
            }
            case 2: {
                return this.nextInArray(true);
            }
            case 3: {
                return this.nextInArray(false);
            }
            case 4: {
                return this.nextInObject(true);
            }
            case 5: {
                return this.objectValue();
            }
            case 6: {
                return this.nextInObject(false);
            }
            case 7: {
                try {
                    JsonToken jsonToken = this.nextValue();
                    if (!this.lenient) throw this.syntaxError("Expected EOF");
                    return jsonToken;
                }
                catch (EOFException var1_3) {
                    JsonToken jsonToken;
                    this.token = jsonToken = JsonToken.END_DOCUMENT;
                    return jsonToken;
                }
            }
            case 8: 
        }
        throw new IllegalStateException("JsonReader is closed");
    }

    public void setLenient(boolean bl) {
        this.lenient = bl;
    }

    /*
     * Exception decompiling
     */
    public void skipValue() throws IOException {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [1[TRYBLOCK]], but top level block is 4[DOLOOP]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:394)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:446)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2869)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:817)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    public String toString() {
        return this.getClass().getSimpleName() + " near " + this.getSnippet();
    }

    static enum JsonScope {
        EMPTY_ARRAY,
        NONEMPTY_ARRAY,
        EMPTY_OBJECT,
        DANGLING_NAME,
        NONEMPTY_OBJECT,
        EMPTY_DOCUMENT,
        NONEMPTY_DOCUMENT,
        CLOSED;
        

        private JsonScope() {
        }
    }

}


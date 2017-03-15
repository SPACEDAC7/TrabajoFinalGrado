/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads;

import com.google.ads.AdRequest;
import com.google.ads.e;
import com.google.ads.g;
import com.google.ads.h;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.util.a;
import com.google.ads.util.b;

class j
implements MediationBannerListener {
    private final h a;
    private boolean b;

    public j(h h2) {
        this.a = h2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onClick(MediationBannerAdapter<?, ?> object) {
        object = this.a;
        synchronized (object) {
            a.a(this.a.c());
            this.a.j().a(this.a, this.b);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onDismissScreen(MediationBannerAdapter<?, ?> object) {
        object = this.a;
        synchronized (object) {
            this.a.j().b(this.a);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onFailedToReceiveAd(MediationBannerAdapter<?, ?> object, AdRequest.ErrorCode errorCode) {
        h h2 = this.a;
        synchronized (h2) {
            a.a(object, this.a.i());
            b.a("Mediation adapter " + object.getClass().getName() + " failed to receive ad with error code: " + (Object)((Object)errorCode));
            if (!this.a.c()) {
                h h3 = this.a;
                object = errorCode == AdRequest.ErrorCode.NO_FILL ? g.a.b : g.a.c;
                h3.a(false, (g.a)((Object)object));
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onLeaveApplication(MediationBannerAdapter<?, ?> object) {
        object = this.a;
        synchronized (object) {
            this.a.j().c(this.a);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onPresentScreen(MediationBannerAdapter<?, ?> object) {
        object = this.a;
        synchronized (object) {
            this.a.j().a(this.a);
            return;
        }
    }

    /*
     * Exception decompiling
     */
    @Override
    public void onReceivedAd(MediationBannerAdapter<?, ?> var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [1[TRYBLOCK]], but top level block is 6[SIMPLE_IF_TAKEN]
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
}


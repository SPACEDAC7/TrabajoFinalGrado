.class public interface abstract annotation Lretrofit/http/POST;
.super Ljava/lang/Object;
.source "POST.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lretrofit/http/RestMethod;
    hasBody = true
    value = "POST"
.end annotation


# virtual methods
.method public abstract value()Ljava/lang/String;
.end method

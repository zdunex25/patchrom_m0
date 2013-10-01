.class public Lcom/android/gallery3d/util/XmpUtilHelper;
.super Ljava/lang/Object;
.source "XmpUtilHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    .locals 1
    .parameter "is"

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public static writeXMPMeta(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .parameter "filename"
    .parameter "meta"

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

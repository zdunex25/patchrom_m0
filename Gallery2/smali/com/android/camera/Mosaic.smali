.class public Lcom/android/camera/Mosaic;
.super Ljava/lang/Object;
.source "Mosaic.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "jni_mosaic"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native allocateMosaicMemory(II)V
.end method

.method public native createMosaic(Z)I
.end method

.method public native freeMosaicMemory()V
.end method

.method public native getFinalMosaicNV21()[B
.end method

.method public native reportProgress(ZZ)I
.end method

.method public native reset()V
.end method

.method public native setSourceImageFromGPU()[F
.end method

.method public native setStripType(I)V
.end method

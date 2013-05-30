.class Lcom/android/server/FMPlayerNative$RTPlusData;
.super Ljava/lang/Object;
.source "FMPlayerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMPlayerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RTPlusData"
.end annotation


# instance fields
.field public mAdditionalLen1:I

.field public mAdditionalLen2:I

.field public mContentType1:I

.field public mContentType2:I

.field public mStartPos1:I

.field public mStartPos2:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0
    .parameter "contentType1"
    .parameter "startPos1"
    .parameter "additionalLen1"
    .parameter "contentType2"
    .parameter "startPos2"
    .parameter "additionalLen2"

    .prologue
    .line 209
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput p1, p0, Lcom/android/server/FMPlayerNative$RTPlusData;->mContentType1:I

    .line 211
    iput p2, p0, Lcom/android/server/FMPlayerNative$RTPlusData;->mStartPos1:I

    .line 212
    iput p3, p0, Lcom/android/server/FMPlayerNative$RTPlusData;->mAdditionalLen1:I

    .line 214
    iput p4, p0, Lcom/android/server/FMPlayerNative$RTPlusData;->mContentType2:I

    .line 215
    iput p5, p0, Lcom/android/server/FMPlayerNative$RTPlusData;->mStartPos2:I

    .line 216
    iput p6, p0, Lcom/android/server/FMPlayerNative$RTPlusData;->mAdditionalLen2:I

    .line 217
    return-void
.end method

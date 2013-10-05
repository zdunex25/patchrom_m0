.class public Lcom/sec/android/seccamera/SecCamera$Size;
.super Ljava/lang/Object;
.source "SecCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/seccamera/SecCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Lcom/sec/android/seccamera/SecCamera;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/sec/android/seccamera/SecCamera;II)V
    .locals 0
    .parameter
    .parameter "w"
    .parameter "h"

    .prologue
    .line 3356
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera$Size;->this$0:Lcom/sec/android/seccamera/SecCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3357
    iput p2, p0, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    .line 3358
    iput p3, p0, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    .line 3359
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 3369
    instance-of v2, p1, Lcom/sec/android/seccamera/SecCamera$Size;

    if-nez v2, :cond_1

    .line 3373
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 3372
    check-cast v0, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 3373
    .local v0, s:Lcom/sec/android/seccamera/SecCamera$Size;
    iget v2, p0, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v3, v0, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    iget v3, v0, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 3377
    iget v0, p0, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method

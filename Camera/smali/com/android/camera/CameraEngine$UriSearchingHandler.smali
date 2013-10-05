.class public Lcom/android/camera/CameraEngine$UriSearchingHandler;
.super Landroid/os/Handler;
.source "CameraEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UriSearchingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraEngine;


# direct methods
.method protected constructor <init>(Lcom/android/camera/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/camera/CameraEngine$UriSearchingHandler;->this$0:Lcom/android/camera/CameraEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 293
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/camera/CameraEngine$UriSearchingHandler;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->searchForLastContentUri()V

    .line 296
    :cond_0
    return-void
.end method

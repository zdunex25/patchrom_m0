.class Lcom/android/camera/glwidget/TwGLThumbnailButton$1;
.super Ljava/lang/Object;
.source "TwGLThumbnailButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/glwidget/TwGLThumbnailButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/glwidget/TwGLThumbnailButton;


# direct methods
.method constructor <init>(Lcom/android/camera/glwidget/TwGLThumbnailButton;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLThumbnailButton$1;->this$0:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLThumbnailButton$1;->this$0:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLThumbnailButton;->update()V

    .line 63
    return-void
.end method

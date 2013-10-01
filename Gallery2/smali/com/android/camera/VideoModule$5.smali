.class Lcom/android/camera/VideoModule$5;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoModule;->initializeControlByIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2204
    iput-object p1, p0, Lcom/android/camera/VideoModule$5;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2207
    iget-object v0, p0, Lcom/android/camera/VideoModule$5;->this$0:Lcom/android/camera/VideoModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoModule;->onReviewCancelClicked(Landroid/view/View;)V

    .line 2208
    return-void
.end method

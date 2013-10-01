.class Lcom/android/gallery3d/ui/SlotView$1;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/SlotView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/SlotView;

.field final synthetic val$listener:Lcom/android/gallery3d/ui/UserInteractionListener;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/UserInteractionListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$1;->this$0:Lcom/android/gallery3d/ui/SlotView;

    iput-object p2, p0, Lcom/android/gallery3d/ui/SlotView$1;->val$listener:Lcom/android/gallery3d/ui/UserInteractionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$1;->val$listener:Lcom/android/gallery3d/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/UserInteractionListener;->onUserInteractionEnd()V

    .line 306
    return-void
.end method

.class Lcom/android/gallery3d/ui/GestureRecognizer$MyDownUpListener;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DownUpDetector$DownUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDownUpListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/GestureRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/gallery3d/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/android/gallery3d/ui/GestureRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/GestureRecognizer;Lcom/android/gallery3d/ui/GestureRecognizer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GestureRecognizer$MyDownUpListener;-><init>(Lcom/android/gallery3d/ui/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/android/gallery3d/ui/GestureRecognizer;

    #getter for: Lcom/android/gallery3d/ui/GestureRecognizer;->mListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/android/gallery3d/ui/GestureRecognizer;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onDown(FF)V

    .line 125
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/android/gallery3d/ui/GestureRecognizer;

    #getter for: Lcom/android/gallery3d/ui/GestureRecognizer;->mListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/android/gallery3d/ui/GestureRecognizer;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onUp()V

    .line 130
    return-void
.end method

.class public Lcom/android/camera/ui/LayoutChangeHelper;
.super Ljava/lang/Object;
.source "LayoutChangeHelper.java"

# interfaces
.implements Lcom/android/camera/ui/LayoutChangeNotifier;


# instance fields
.field private mFirstTimeLayout:Z

.field private mListener:Lcom/android/camera/ui/LayoutChangeNotifier$Listener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/ui/LayoutChangeHelper;->mView:Landroid/view/View;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/LayoutChangeHelper;->mFirstTimeLayout:Z

    .line 29
    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/LayoutChangeHelper;->mListener:Lcom/android/camera/ui/LayoutChangeNotifier$Listener;

    if-nez v0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/LayoutChangeHelper;->mFirstTimeLayout:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 39
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/LayoutChangeHelper;->mFirstTimeLayout:Z

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/LayoutChangeHelper;->mListener:Lcom/android/camera/ui/LayoutChangeNotifier$Listener;

    iget-object v1, p0, Lcom/android/camera/ui/LayoutChangeHelper;->mView:Landroid/view/View;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/LayoutChangeNotifier$Listener;->onLayoutChange(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method public setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/camera/ui/LayoutChangeHelper;->mListener:Lcom/android/camera/ui/LayoutChangeNotifier$Listener;

    .line 34
    return-void
.end method

.class public Lcom/android/camera/ui/LayoutNotifyView;
.super Landroid/view/View;
.source "LayoutNotifyView.java"

# interfaces
.implements Lcom/android/camera/ui/LayoutChangeNotifier;


# instance fields
.field private mLayoutChangeHelper:Lcom/android/camera/ui/LayoutChangeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/android/camera/ui/LayoutChangeHelper;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/LayoutChangeHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/ui/LayoutNotifyView;->mLayoutChangeHelper:Lcom/android/camera/ui/LayoutChangeHelper;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Lcom/android/camera/ui/LayoutChangeHelper;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/LayoutChangeHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/ui/LayoutNotifyView;->mLayoutChangeHelper:Lcom/android/camera/ui/LayoutChangeHelper;

    .line 35
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 45
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/LayoutNotifyView;->mLayoutChangeHelper:Lcom/android/camera/ui/LayoutChangeHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/LayoutChangeHelper;->onLayout(ZIIII)V

    .line 47
    return-void
.end method

.method public setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/LayoutNotifyView;->mLayoutChangeHelper:Lcom/android/camera/ui/LayoutChangeHelper;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/LayoutChangeHelper;->setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V

    .line 41
    return-void
.end method

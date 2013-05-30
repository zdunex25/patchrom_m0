.class Lcom/android/OriginalSettings/guide/ListGuiderBase$1;
.super Ljava/lang/Object;
.source "ListGuiderBase.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/guide/ListGuiderBase;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/guide/ListGuiderBase;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/guide/ListGuiderBase;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/OriginalSettings/guide/ListGuiderBase$1;->this$0:Lcom/android/OriginalSettings/guide/ListGuiderBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 86
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

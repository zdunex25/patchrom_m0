.class public Lcom/android/camera/ui/PopupManager;
.super Ljava/lang/Object;
.source "PopupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
    }
.end annotation


# static fields
.field private static sMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/camera/ui/PopupManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/ui/PopupManager;->sMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PopupManager;->mListeners:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    sget-object v1, Lcom/android/camera/ui/PopupManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PopupManager;

    .line 55
    .local v0, instance:Lcom/android/camera/ui/PopupManager;
    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/camera/ui/PopupManager;

    .end local v0           #instance:Lcom/android/camera/ui/PopupManager;
    invoke-direct {v0}, Lcom/android/camera/ui/PopupManager;-><init>()V

    .line 57
    .restart local v0       #instance:Lcom/android/camera/ui/PopupManager;
    sget-object v1, Lcom/android/camera/ui/PopupManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    return-object v0
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 63
    sget-object v1, Lcom/android/camera/ui/PopupManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PopupManager;

    .line 64
    .local v0, instance:Lcom/android/camera/ui/PopupManager;
    sget-object v1, Lcom/android/camera/ui/PopupManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method


# virtual methods
.method public notifyShowPopup(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 42
    iget-object v2, p0, Lcom/android/camera/ui/PopupManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;

    .local v1, listener:Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
    move-object v2, v1

    .line 43
    check-cast v2, Landroid/view/View;

    if-eq v2, p1, :cond_0

    .line 44
    invoke-interface {v1}, Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;->onOtherPopupShowed()V

    goto :goto_0

    .line 47
    .end local v1           #listener:Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
    :cond_1
    return-void
.end method

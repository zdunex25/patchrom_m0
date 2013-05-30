.class Lcom/android/internal/policy/impl/PhoneFallbackEventHandler$1;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler$1;->this$0:Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 68
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler$1;->this$0:Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 69
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler$1;->this$0:Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 71
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v2, 0x1b

    invoke-direct {v0, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 72
    .local v0, cameraKeyDown:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler$1;->this$0:Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 75
    return-void
.end method

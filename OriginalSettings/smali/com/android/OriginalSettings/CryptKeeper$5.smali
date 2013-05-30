.class Lcom/android/OriginalSettings/CryptKeeper$5;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/CryptKeeper;->passwordEntryInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/CryptKeeper;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/OriginalSettings/CryptKeeper$5;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    iput-object p2, p0, Lcom/android/OriginalSettings/CryptKeeper$5;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 583
    invoke-static {}, Lcom/android/OriginalSettings/CryptKeeper;->access$200()I

    move-result v0

    if-nez v0, :cond_0

    .line 584
    invoke-static {}, Lcom/android/OriginalSettings/CryptKeeper;->access$1200()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 585
    invoke-static {v2}, Lcom/android/OriginalSettings/CryptKeeper;->access$1202(Z)Z

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper$5;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    goto :goto_0
.end method

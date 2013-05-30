.class Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;

    iget-object v1, v1, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x1

    .line 110
    .local v0, failed:Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 111
    const/4 v0, 0x0

    .line 120
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 121
    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;

    iget-object v1, v1, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    const/16 v2, 0x65

    #calls: Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->showDialog(I)V
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->access$100(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;I)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;

    iget-object v1, v1, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->finish()V

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    goto :goto_1

    .line 115
    :catch_1
    move-exception v1

    goto :goto_1

    .line 113
    :catch_2
    move-exception v1

    goto :goto_1
.end method

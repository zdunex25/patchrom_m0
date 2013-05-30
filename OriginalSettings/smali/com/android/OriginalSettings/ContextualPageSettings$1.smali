.class Lcom/android/OriginalSettings/ContextualPageSettings$1;
.super Landroid/database/ContentObserver;
.source "ContextualPageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ContextualPageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/ContextualPageSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/ContextualPageSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/OriginalSettings/ContextualPageSettings$1;->this$0:Lcom/android/OriginalSettings/ContextualPageSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/ContextualPageSettings$1;->this$0:Lcom/android/OriginalSettings/ContextualPageSettings;

    #calls: Lcom/android/OriginalSettings/ContextualPageSettings;->updateContextualPageSaving()V
    invoke-static {v0}, Lcom/android/OriginalSettings/ContextualPageSettings;->access$000(Lcom/android/OriginalSettings/ContextualPageSettings;)V

    .line 80
    const-string v0, "ContextualPageSettings"

    const-string v1, "onChange() CONTEXTUALPAGE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

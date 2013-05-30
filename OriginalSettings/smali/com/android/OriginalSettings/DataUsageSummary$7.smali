.class Lcom/android/OriginalSettings/DataUsageSummary$7;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary$7;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1273
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$7;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1000(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1274
    .local v0, disableAtLimit:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1277
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$7;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    .line 1281
    :goto_1
    return-void

    .line 1273
    .end local v0           #disableAtLimit:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1279
    .restart local v0       #disableAtLimit:Z
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$7;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    const-wide/16 v2, -0x1

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v1, v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1100(Lcom/android/OriginalSettings/DataUsageSummary;J)V

    goto :goto_1
.end method

.class Lcom/android/OriginalSettings/DataUsageSummary$15;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;


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
    .line 1522
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary$15;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$15;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->updateDetailData()V
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$2000(Lcom/android/OriginalSettings/DataUsageSummary;)V

    .line 1527
    return-void
.end method

.method public onLimitChanged()V
    .locals 3

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$15;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$15;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1900(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v1

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1100(Lcom/android/OriginalSettings/DataUsageSummary;J)V

    .line 1537
    return-void
.end method

.method public onWarningChanged()V
    .locals 3

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$15;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$15;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1900(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v1

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1300(Lcom/android/OriginalSettings/DataUsageSummary;J)V

    .line 1532
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$15;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    .line 1547
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$15;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    .line 1542
    return-void
.end method

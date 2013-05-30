.class Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;

.field final synthetic val$cycleDayPicker:Landroid/widget/NumberPicker;

.field final synthetic val$editor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/android/OriginalSettings/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/OriginalSettings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2064
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment$1;->this$0:Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;

    iput-object p2, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    iput-object p4, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2067
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 2068
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 2069
    .local v0, cycleDay:I
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iget-object v1, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2070
    .local v1, cycleTimezone:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 2071
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/android/OriginalSettings/DataUsageSummary;

    const/4 v3, 0x1

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary;->access$800(Lcom/android/OriginalSettings/DataUsageSummary;Z)V

    .line 2072
    return-void
.end method

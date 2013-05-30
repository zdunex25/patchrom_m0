.class Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment$1;
.super Ljava/lang/Object;
.source "DormantModeCustomList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment$1;->this$0:Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment$1;->this$0:Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    const-string v1, "selected_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment$1;->this$0:Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 115
    const/4 v0, 0x1

    return v0
.end method

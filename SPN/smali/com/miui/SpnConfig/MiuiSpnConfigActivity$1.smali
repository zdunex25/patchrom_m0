.class Lcom/miui/SpnConfig/MiuiSpnConfigActivity$1;
.super Landroid/database/ContentObserver;
.source "MiuiSpnConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/SpnConfig/MiuiSpnConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/SpnConfig/MiuiSpnConfigActivity;


# direct methods
.method constructor <init>(Lcom/miui/SpnConfig/MiuiSpnConfigActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity$1;->this$0:Lcom/miui/SpnConfig/MiuiSpnConfigActivity;

    .line 101
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity$1;->this$0:Lcom/miui/SpnConfig/MiuiSpnConfigActivity;

    #calls: Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->observe()V
    invoke-static {v0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->access$0(Lcom/miui/SpnConfig/MiuiSpnConfigActivity;)V

    .line 105
    return-void
.end method

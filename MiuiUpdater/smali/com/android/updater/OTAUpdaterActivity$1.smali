.class Lcom/android/updater/OTAUpdaterActivity$1;
.super Ljava/lang/Object;
.source "OTAUpdaterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/OTAUpdaterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/OTAUpdaterActivity;


# direct methods
.method constructor <init>(Lcom/android/updater/OTAUpdaterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/updater/OTAUpdaterActivity$1;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 111
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$1;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    invoke-virtual {v0}, Lcom/android/updater/OTAUpdaterActivity;->finish()V

    .line 112
    return-void
.end method

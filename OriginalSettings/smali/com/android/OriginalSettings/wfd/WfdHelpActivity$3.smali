.class Lcom/android/OriginalSettings/wfd/WfdHelpActivity$3;
.super Ljava/lang/Object;
.source "WfdHelpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wfd/WfdHelpActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wfd/WfdHelpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity$3;->this$0:Lcom/android/OriginalSettings/wfd/WfdHelpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity$3;->this$0:Lcom/android/OriginalSettings/wfd/WfdHelpActivity;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->finish()V

    .line 146
    return-void
.end method

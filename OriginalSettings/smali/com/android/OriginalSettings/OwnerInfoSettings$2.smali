.class Lcom/android/OriginalSettings/OwnerInfoSettings$2;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/OwnerInfoSettings;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/OwnerInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/OriginalSettings/OwnerInfoSettings$2;->this$0:Lcom/android/OriginalSettings/OwnerInfoSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/OriginalSettings/OwnerInfoSettings$2;->this$0:Lcom/android/OriginalSettings/OwnerInfoSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->saveToDb()V

    .line 62
    return-void
.end method

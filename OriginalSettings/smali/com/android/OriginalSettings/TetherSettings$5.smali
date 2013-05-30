.class Lcom/android/OriginalSettings/TetherSettings$5;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/TetherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/OriginalSettings/TetherSettings$5;->this$0:Lcom/android/OriginalSettings/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings$5;->this$0:Lcom/android/OriginalSettings/TetherSettings;

    #calls: Lcom/android/OriginalSettings/TetherSettings;->startTethering()V
    invoke-static {v0}, Lcom/android/OriginalSettings/TetherSettings;->access$600(Lcom/android/OriginalSettings/TetherSettings;)V

    .line 416
    return-void
.end method

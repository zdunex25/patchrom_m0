.class Lcom/android/OriginalSettings/BlockSettings$3;
.super Ljava/lang/Object;
.source "BlockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/BlockSettings;->makeVoiceCallBlockDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/BlockSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/BlockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/OriginalSettings/BlockSettings$3;->this$0:Lcom/android/OriginalSettings/BlockSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/OriginalSettings/BlockSettings$3;->this$0:Lcom/android/OriginalSettings/BlockSettings;

    #setter for: Lcom/android/OriginalSettings/BlockSettings;->mListIndex:I
    invoke-static {v0, p2}, Lcom/android/OriginalSettings/BlockSettings;->access$002(Lcom/android/OriginalSettings/BlockSettings;I)I

    .line 260
    iget-object v0, p0, Lcom/android/OriginalSettings/BlockSettings$3;->this$0:Lcom/android/OriginalSettings/BlockSettings;

    iget-object v1, p0, Lcom/android/OriginalSettings/BlockSettings$3;->this$0:Lcom/android/OriginalSettings/BlockSettings;

    #getter for: Lcom/android/OriginalSettings/BlockSettings;->mListIndex:I
    invoke-static {v1}, Lcom/android/OriginalSettings/BlockSettings;->access$000(Lcom/android/OriginalSettings/BlockSettings;)I

    move-result v1

    #calls: Lcom/android/OriginalSettings/BlockSettings;->setBlockMode(I)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/BlockSettings;->access$100(Lcom/android/OriginalSettings/BlockSettings;I)V

    .line 261
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 262
    iget-object v0, p0, Lcom/android/OriginalSettings/BlockSettings$3;->this$0:Lcom/android/OriginalSettings/BlockSettings;

    #calls: Lcom/android/OriginalSettings/BlockSettings;->updateSummary()V
    invoke-static {v0}, Lcom/android/OriginalSettings/BlockSettings;->access$200(Lcom/android/OriginalSettings/BlockSettings;)V

    .line 263
    return-void
.end method

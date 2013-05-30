.class Lcom/android/OriginalSettings/DisplaySettings$10;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/DisplaySettings;->showSmartRatationGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/android/OriginalSettings/DisplaySettings$10;->this$0:Lcom/android/OriginalSettings/DisplaySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings$10;->this$0:Lcom/android/OriginalSettings/DisplaySettings;

    #calls: Lcom/android/OriginalSettings/DisplaySettings;->stopAnimation()V
    invoke-static {v0}, Lcom/android/OriginalSettings/DisplaySettings;->access$500(Lcom/android/OriginalSettings/DisplaySettings;)V

    .line 1141
    return-void
.end method

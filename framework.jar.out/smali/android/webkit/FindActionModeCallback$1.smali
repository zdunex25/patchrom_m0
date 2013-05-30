.class Landroid/webkit/FindActionModeCallback$1;
.super Ljava/lang/Object;
.source "FindActionModeCallback.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/FindActionModeCallback;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/FindActionModeCallback;


# direct methods
.method constructor <init>(Landroid/webkit/FindActionModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Landroid/webkit/FindActionModeCallback$1;->this$0:Landroid/webkit/FindActionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 60
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/webkit/FindActionModeCallback$1;->this$0:Landroid/webkit/FindActionModeCallback;

    #getter for: Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Landroid/webkit/FindActionModeCallback;->access$000(Landroid/webkit/FindActionModeCallback;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback$1;->this$0:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/FindActionModeCallback;->finish()V

    .line 64
    :cond_0
    return-void
.end method

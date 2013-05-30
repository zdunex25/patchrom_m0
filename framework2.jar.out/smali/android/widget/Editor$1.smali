.class Landroid/widget/Editor$1;
.super Landroid/view/OrientationEventListener;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 234
    iput-object p1, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    .line 237
    :try_start_0
    iget-object v1, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 239
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mLastOrientation:I
    invoke-static {v2}, Landroid/widget/Editor;->access$100(Landroid/widget/Editor;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 269
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return-void

    .line 243
    .restart local v0       #config:Landroid/content/res/Configuration;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    #calls: Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;
    invoke-static {v1}, Landroid/widget/Editor$InsertionPointCursorController;->access$200(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-nez v1, :cond_2

    .line 244
    iget-object v1, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    #calls: Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;
    invoke-static {v1}, Landroid/widget/Editor$InsertionPointCursorController;->access$200(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionHandleView;->hide()V

    .line 248
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    #setter for: Landroid/widget/Editor;->mLastOrientation:I
    invoke-static {v1, v2}, Landroid/widget/Editor;->access$102(Landroid/widget/Editor;I)I

    .line 249
    iget-object v1, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->updateShowAsAction(Landroid/content/res/Configuration;)V
    invoke-static {v1, v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;Landroid/content/res/Configuration;)V

    .line 253
    iget-object v1, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    instance-of v1, v1, Landroid/inputmethodservice/ExtractEditText;

    if-nez v1, :cond_0

    .line 254
    iget-object v1, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/Editor$1$1;

    invoke-direct {v2, p0}, Landroid/widget/Editor$1$1;-><init>(Landroid/widget/Editor$1;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    .end local v0           #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

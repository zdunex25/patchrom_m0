.class public Landroid/webkit/HtmlComposerView$HCWHandler;
.super Landroid/os/Handler;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HCWHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method public constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 2228
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 2230
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2252
    :cond_0
    :goto_0
    return-void

    .line 2232
    :pswitch_0
    iget-object v1, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    sget v2, Landroid/webkit/HtmlComposerView;->operSel:I

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    goto :goto_0

    .line 2235
    :pswitch_1
    const-string v1, "HtmlComposerView"

    const-string v2, "HCWHandler UPDATE_RICHTEXT_TOOLBAR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    iget-object v1, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_0

    .line 2240
    :pswitch_2
    const-string v1, "HtmlComposerView"

    const-string v2, "HIT_INSERTED_IMAGE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2242
    .local v0, imageUri:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2243
    iget-object v1, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    iget-boolean v1, v1, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HIT_INSERTED_IMAGE Selected imageUri = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    :cond_1
    iget-object v1, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    iget-object v1, v1, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    if-eqz v1, :cond_0

    .line 2247
    iget-object v1, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    iget-object v1, v1, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    invoke-interface {v1, v0}, Landroid/webkit/HtmlComposerView$InsertedImageHitListener;->onHitResult(Ljava/lang/String;)V

    goto :goto_0

    .line 2230
    nop

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;
.super Ljava/lang/Object;
.source "PanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/PanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UtilityPanel"
.end annotation


# instance fields
.field firstTimeCropDisplayed:Z

.field private mAspectButton:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mCurvesButton:Landroid/view/View;

.field private mEffectName:Ljava/lang/String;

.field private mParameterValue:I

.field private mSelected:Z

.field private mShowParameterValue:Z

.field private final mTextView:Landroid/widget/TextView;

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/gallery3d/filtershow/PanelController;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "view"
    .parameter "textView"
    .parameter "aspectButton"
    .parameter "curvesButton"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 145
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mSelected:Z

    .line 137
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mEffectName:Ljava/lang/String;

    .line 138
    iput v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mParameterValue:I

    .line 139
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mShowParameterValue:Z

    .line 140
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    .line 141
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mCurvesButton:Landroid/view/View;

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->firstTimeCropDisplayed:Z

    .line 146
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    .line 147
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    .line 148
    check-cast p4, Landroid/widget/TextView;

    .end local p4
    iput-object p4, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mTextView:Landroid/widget/TextView;

    .line 149
    iput-object p5, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    .line 150
    iput-object p6, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mCurvesButton:Landroid/view/View;

    .line 151
    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public hideAspectButtons()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :cond_0
    return-void
.end method

.method public hideCurvesButtons()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mCurvesButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mCurvesButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :cond_0
    return-void
.end method

.method public onNewValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 234
    iput p1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mParameterValue:I

    .line 235
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->updateText()V

    .line 236
    return-void
.end method

.method public select()Landroid/view/ViewPropertyAnimator;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 275
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/PanelController;->access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 277
    .local v1, h:I
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setX(F)V

    .line 278
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 279
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->updateText()V

    .line 280
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 281
    .local v0, anim:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 282
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 283
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mSelected:Z

    .line 284
    return-object v0
.end method

.method public selected()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mSelected:Z

    return v0
.end method

.method public setAspectButton(Lcom/android/gallery3d/filtershow/ui/FramedTextButton;I)V
    .locals 9
    .parameter "button"
    .parameter "itemId"

    .prologue
    const/high16 v8, 0x40e0

    const/high16 v7, 0x40a0

    const/high16 v6, 0x4080

    const/high16 v5, 0x4040

    const/high16 v4, 0x3f80

    .line 158
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/PanelController;->access$400(Lcom/android/gallery3d/filtershow/PanelController;)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    .line 159
    .local v0, imageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;
    packed-switch p2, :pswitch_data_0

    .line 210
    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 211
    return-void

    .line 161
    :pswitch_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0a015a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, t:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, v4, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 164
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v1           #t:Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0a015b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    .restart local v1       #t:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, v6, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 171
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v1           #t:Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0a015c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    .restart local v1       #t:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 178
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v1           #t:Ljava/lang/String;
    :pswitch_4
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0a015e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    .restart local v1       #t:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, v7, v8}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 185
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    .end local v1           #t:Ljava/lang/String;
    :pswitch_5
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0a015f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    .restart local v1       #t:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, v8, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 192
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    .end local v1           #t:Ljava/lang/String;
    :pswitch_6
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0161

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    .restart local v1       #t:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->applyClear()V

    .line 199
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    .end local v1           #t:Ljava/lang/String;
    :pswitch_7
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0162

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    .restart local v1       #t:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->applyOriginal()V

    .line 206
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000d7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setEffectName(Ljava/lang/String;)V
    .locals 1
    .parameter "effectName"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mEffectName:Ljava/lang/String;

    .line 240
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 241
    return-void
.end method

.method public setShowParameter(Z)V
    .locals 0
    .parameter "s"

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mShowParameterValue:Z

    .line 245
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->updateText()V

    .line 246
    return-void
.end method

.method public showAspectButtons()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :cond_0
    return-void
.end method

.method public showCurvesButtons()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mCurvesButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mCurvesButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_0
    return-void
.end method

.method public unselect()Landroid/view/ViewPropertyAnimator;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 259
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 260
    .local v0, anim:Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 261
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 262
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/PanelController;->access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 263
    .local v1, h:I
    neg-int v2, v1

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 264
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel$1;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel$1;-><init>(Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 270
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mSelected:Z

    .line 271
    return-object v0
.end method

.method public updateText()V
    .locals 4

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0157

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, apply:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mShowParameterValue:Z

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mEffectName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mParameterValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mEffectName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

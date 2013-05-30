.class Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionUIPasteListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 2049
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaste(Ljava/lang/String;I)V
    .locals 21
    .parameter "htmlFragment"
    .parameter "dataType"

    .prologue
    .line 2051
    const-string v17, "HtmlComposerView"

    const-string v18, "SelectionUIPasteListener onPaste"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    if-nez p1, :cond_0

    .line 2053
    const-string v17, "HtmlComposerView"

    const-string v18, "SelectionUIPasteListener onPaste htmlFragment == null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    :goto_0
    return-void

    .line 2057
    :cond_0
    const/16 v17, 0x3

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 2059
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2061
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 2062
    .local v8, imageUri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2066
    .local v3, absoluteFilePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/webkit/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2067
    .local v5, dstFilePath:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2069
    .local v9, mFile:Ljava/io/File;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2070
    .local v13, originalFile:Ljava/io/File;
    const-wide/32 v17, 0x100000

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-gtz v17, :cond_1

    .line 2072
    const/16 v17, 0x4

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2073
    const-string v17, "HtmlComposerView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "####################### originalFile.length() : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :cond_1
    const/4 v15, 0x0

    .line 2079
    .local v15, src:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {v3, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 2091
    const-string v17, "HtmlComposerView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "####################### htmlFragment : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    iget v12, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2094
    .local v12, originWidth:I
    iget v11, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2095
    .local v11, originHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mScreenWidth:I
    invoke-static/range {v17 .. v17}, Landroid/webkit/HtmlComposerView;->access$600(Landroid/webkit/HtmlComposerView;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mScreenHeight:I
    invoke-static/range {v18 .. v18}, Landroid/webkit/HtmlComposerView;->access$700(Landroid/webkit/HtmlComposerView;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mScreenWidth:I
    invoke-static/range {v17 .. v17}, Landroid/webkit/HtmlComposerView;->access$600(Landroid/webkit/HtmlComposerView;)I

    move-result v17

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/HtmlComposerView;->getPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/HtmlComposerView;->getPaddingRight()I

    move-result v18

    sub-int v16, v17, v18

    .line 2096
    .local v16, width:I
    mul-int v17, v11, v16

    div-int v7, v17, v12

    .line 2098
    .local v7, height:I
    const-wide/32 v17, 0x100000

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-gtz v17, :cond_c

    .line 2099
    const-string v17, "HtmlComposerView"

    const-string v18, "####################### htmlFragment : Big Data"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    if-eqz v15, :cond_3

    .line 2104
    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2106
    .local v14, outStream:Ljava/io/FileOutputStream;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, ".jpg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    if-gtz v17, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, ".jpeg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_a

    .line 2108
    :cond_2
    const-string v17, "HtmlComposerView"

    const-string v18, "####################### htmlFragment : Bitmap.CompressFormat.JPEG"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2110
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V

    .line 2111
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2148
    .end local v14           #outStream:Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2150
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 2151
    const-string v17, "HtmlComposerView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "####################### htmlFragment : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    :cond_4
    if-eqz v16, :cond_d

    .line 2156
    move/from16 v0, v16

    if-le v0, v12, :cond_5

    .line 2158
    move/from16 v16, v12

    .line 2159
    move v7, v11

    .line 2162
    :cond_5
    const-wide/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v19, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mZoomFactor:F
    invoke-static/range {v19 .. v19}, Landroid/webkit/HtmlComposerView;->access$900(Landroid/webkit/HtmlComposerView;)F

    move-result v19

    const/high16 v20, 0x42c8

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    cmpg-double v17, v17, v19

    if-gez v17, :cond_6

    .line 2163
    mul-int/lit8 v17, v16, 0x64

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mZoomFactor:F
    invoke-static/range {v18 .. v18}, Landroid/webkit/HtmlComposerView;->access$900(Landroid/webkit/HtmlComposerView;)F

    move-result v18

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2164
    mul-int/lit8 v17, v7, 0x64

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mZoomFactor:F
    invoke-static/range {v18 .. v18}, Landroid/webkit/HtmlComposerView;->access$900(Landroid/webkit/HtmlComposerView;)F

    move-result v18

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v7, v0

    .line 2167
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v7}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    .line 2217
    .end local v3           #absoluteFilePath:Ljava/lang/String;
    .end local v5           #dstFilePath:Ljava/lang/String;
    .end local v7           #height:I
    .end local v8           #imageUri:Landroid/net/Uri;
    .end local v9           #mFile:Ljava/io/File;
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #originHeight:I
    .end local v12           #originWidth:I
    .end local v13           #originalFile:Ljava/io/File;
    .end local v15           #src:Landroid/graphics/Bitmap;
    .end local v16           #width:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 2218
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 2221
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    sget v18, Landroid/webkit/HtmlComposerView;->operSel:I

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    .line 2224
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto/16 :goto_0

    .line 2080
    .restart local v3       #absoluteFilePath:Ljava/lang/String;
    .restart local v5       #dstFilePath:Ljava/lang/String;
    .restart local v8       #imageUri:Landroid/net/Uri;
    .restart local v9       #mFile:Ljava/io/File;
    .restart local v10       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v13       #originalFile:Ljava/io/File;
    .restart local v15       #src:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    .line 2081
    .local v6, e:Ljava/lang/OutOfMemoryError;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 2082
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v17 .. v20}, Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;->onNotification(ILjava/lang/Exception;Ljava/lang/String;)V

    .line 2085
    :cond_8
    const/4 v9, 0x0

    .line 2086
    const/4 v13, 0x0

    .line 2087
    const/4 v10, 0x0

    .line 2089
    goto/16 :goto_0

    .line 2095
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    .restart local v11       #originHeight:I
    .restart local v12       #originWidth:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mScreenHeight:I
    invoke-static/range {v17 .. v17}, Landroid/webkit/HtmlComposerView;->access$700(Landroid/webkit/HtmlComposerView;)I

    move-result v17

    goto/16 :goto_1

    .line 2113
    .restart local v7       #height:I
    .restart local v14       #outStream:Ljava/io/FileOutputStream;
    .restart local v16       #width:I
    :cond_a
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, "png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_b

    .line 2115
    const-string v17, "HtmlComposerView"

    const-string v18, "####################### htmlFragment : Bitmap.CompressFormat.PNG"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2117
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V

    .line 2118
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 2129
    .end local v14           #outStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    .line 2130
    .local v6, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 2122
    .end local v6           #e:Ljava/io/FileNotFoundException;
    .restart local v14       #outStream:Ljava/io/FileOutputStream;
    :cond_b
    const/16 v17, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/webkit/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v3, v5}, Landroid/webkit/HtmlComposerView;->access$800(Landroid/webkit/HtmlComposerView;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 2124
    const-string v17, "HtmlComposerView"

    const-string v18, "####################### onPaste : copyFile Fail !!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 2133
    .end local v14           #outStream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    .line 2134
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 2141
    .end local v6           #e:Ljava/io/IOException;
    :cond_c
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/webkit/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v3, v5}, Landroid/webkit/HtmlComposerView;->access$800(Landroid/webkit/HtmlComposerView;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 2143
    const-string v17, "HtmlComposerView"

    const-string v18, "####################### onPaste : copyFile Fail !!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2171
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2175
    .end local v3           #absoluteFilePath:Ljava/lang/String;
    .end local v5           #dstFilePath:Ljava/lang/String;
    .end local v7           #height:I
    .end local v8           #imageUri:Landroid/net/Uri;
    .end local v9           #mFile:Ljava/io/File;
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #originHeight:I
    .end local v12           #originWidth:I
    .end local v13           #originalFile:Ljava/io/File;
    .end local v15           #src:Landroid/graphics/Bitmap;
    .end local v16           #width:I
    :cond_e
    const/16 v17, 0x4

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 2176
    const-string v17, "(?i)(?:line)[-|\\s]?(height)[\\s]?[\\=|\\:][\\s]?[s0-9][^;|\\\"]+ [\\s]?"

    const-string v18, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2182
    :try_start_4
    const-string v17, "<p"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_f

    .line 2184
    const-string v17, "<p"

    const-string v18, "<span"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2185
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2186
    .local v4, b:Ljava/lang/StringBuilder;
    const-string v17, "/p>"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    const-string v18, "/p>"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x3

    const-string v19, "/span>"

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2187
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2190
    .end local v4           #b:Ljava/lang/StringBuilder;
    :cond_f
    const-string v17, "<div"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_10

    .line 2192
    const-string v17, "<div"

    const-string v18, "<span"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2193
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2194
    .restart local v4       #b:Ljava/lang/StringBuilder;
    const-string v17, "/div>"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    const-string v18, "/div>"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x5

    const-string v19, "/span>"

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2195
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object p1

    .line 2203
    .end local v4           #b:Ljava/lang/StringBuilder;
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 2205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2206
    const v17, 0x102040a

    sput v17, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 2207
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "<.*?>"

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    goto/16 :goto_3

    .line 2197
    :catch_3
    move-exception v6

    .line 2198
    .local v6, e:Ljava/lang/OutOfMemoryError;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v17 .. v20}, Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;->onNotification(ILjava/lang/Exception;Ljava/lang/String;)V

    goto :goto_4

    .line 2210
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 2212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2213
    const v17, 0x102040a

    sput v17, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 2214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "<.*?>"

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    goto/16 :goto_3
.end method

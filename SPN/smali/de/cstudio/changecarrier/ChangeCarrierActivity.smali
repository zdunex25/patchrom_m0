.class public Lde/cstudio/changecarrier/ChangeCarrierActivity;
.super Landroid/app/Activity;
.source "ChangeCarrierActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private isBackupChecked:Z

.field private isFlightmode:Z

.field private isSpnConf:Z

.field private sdcard:Ljava/lang/String;

.field private simOperator:Ljava/lang/String;

.field private simOperatorNumber:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput v1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->simOperatorNumber:I

    .line 54
    const-string v0, "Can\'t Read ..."

    iput-object v0, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->simOperator:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->isSpnConf:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->isBackupChecked:Z

    .line 57
    iput-boolean v1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->isFlightmode:Z

    .line 58
    const-string v0, "ChangeCarrier"

    iput-object v0, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->sdcard:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private DisableUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 299
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 300
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 301
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 302
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 303
    return-void
.end method

.method private RebootDialog()V
    .locals 3

    .prologue
    .line 469
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 470
    .local v0, dlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 471
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 472
    const v1, 0x7f060021

    new-instance v2, Lde/cstudio/changecarrier/ChangeCarrierActivity$6;

    invoke-direct {v2, p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity$6;-><init>(Lde/cstudio/changecarrier/ChangeCarrierActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 482
    const v1, 0x7f060022

    new-instance v2, Lde/cstudio/changecarrier/ChangeCarrierActivity$7;

    invoke-direct {v2, p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity$7;-><init>(Lde/cstudio/changecarrier/ChangeCarrierActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 486
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 487
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 488
    return-void
.end method

.method private Toasty(I)V
    .locals 3
    .parameter "resourceMessage"

    .prologue
    .line 491
    invoke-virtual {p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 492
    invoke-virtual {p0, p1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 493
    const/4 v2, 0x1

    .line 491
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 494
    return-void
.end method

.method private Toasty(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 496
    invoke-virtual {p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 498
    const/4 v1, 0x1

    .line 496
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 499
    return-void
.end method

.method static synthetic access$0(Lde/cstudio/changecarrier/ChangeCarrierActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-boolean p1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->isBackupChecked:Z

    return-void
.end method

.method static synthetic access$1(Lde/cstudio/changecarrier/ChangeCarrierActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->changeCarrier(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lde/cstudio/changecarrier/ChangeCarrierActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->Toasty(I)V

    return-void
.end method

.method static synthetic access$3(Lde/cstudio/changecarrier/ChangeCarrierActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 305
    invoke-direct {p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getCurrentCarrier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lde/cstudio/changecarrier/ChangeCarrierActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    invoke-direct {p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->RebootDialog()V

    return-void
.end method

.method static synthetic access$5(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {p0, p1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$6(Lde/cstudio/changecarrier/ChangeCarrierActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->isSpnConf:Z

    return-void
.end method

.method private changeCarrier(Ljava/lang/String;)V
    .locals 27
    .parameter "newCarrier"

    .prologue
    .line 337
    const/16 v24, 0x0

    sput-boolean v24, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    .line 338
    const/4 v9, 0x0

    .line 341
    .local v9, error:Z
    const-string v24, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 343
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 346
    :try_start_0
    const-string v24, "/system"

    const-string v25, "RW"

    invoke-static/range {v24 .. v25}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 347
    new-instance v17, Lde/cstudio/changecarrier/ChangeCarrierActivity$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lde/cstudio/changecarrier/ChangeCarrierActivity$5;-><init>(Lde/cstudio/changecarrier/ChangeCarrierActivity;)V

    .line 360
    .local v17, result:Lcom/stericson/RootTools/RootTools$Result;
    const-string v24, "find /system/etc/ -name \'spn-conf.xml\'"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;Lcom/stericson/RootTools/RootTools$Result;)Ljava/util/List;

    .line 366
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->isBackupChecked:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->isSpnConf:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 367
    const-string v24, "chmod 755 /system/etc/spn-conf.xml"

    invoke-static/range {v24 .. v24}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;)Ljava/util/List;

    .line 368
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "rm "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getFilesDir()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/spn-conf.bak"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;)Ljava/util/List;

    .line 369
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "touch "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getFilesDir()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/spn-conf.bak"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;)Ljava/util/List;

    .line 370
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "cat /system/etc/spn-conf.xml>"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getFilesDir()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/spn-conf.bak"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;)Ljava/util/List;

    .line 373
    :cond_0
    const/4 v11, 0x0

    .line 375
    .local v11, found:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->isSpnConf:Z

    move/from16 v24, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v24, :cond_1

    .line 377
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    .line 378
    .local v10, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 379
    .local v3, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v24, Ljava/io/File;

    const-string v25, "/system/etc/spn-conf.xml"

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 380
    .local v7, document:Lorg/w3c/dom/Document;
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    .line 381
    .local v4, child:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 383
    .local v14, nodes:Lorg/w3c/dom/NodeList;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move v0, v12

    move/from16 v1, v24

    if-lt v0, v1, :cond_4

    .line 395
    :goto_1
    if-eqz v11, :cond_1

    .line 396
    invoke-interface {v7}, Lorg/w3c/dom/Document;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v6

    .line 397
    .local v6, docFragment:Lorg/w3c/dom/DocumentFragment;
    invoke-interface {v6, v4}, Lorg/w3c/dom/DocumentFragment;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 399
    invoke-static {v6}, Lnu/xom/converters/DOMConverter;->convert(Lorg/w3c/dom/DocumentFragment;)Lnu/xom/Nodes;

    move-result-object v15

    .line 400
    .local v15, nodes2:Lnu/xom/Nodes;
    new-instance v23, Lnu/xom/Document;

    const/16 v24, 0x0

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v2

    check-cast v2, Lnu/xom/Element;

    move-object/from16 v0, v23

    move-object v1, v2

    invoke-direct {v0, v1}, Lnu/xom/Document;-><init>(Lnu/xom/Element;)V

    .line 402
    .local v23, xomDoc:Lnu/xom/Document;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getFilesDir()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "/spn-conf.xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 404
    .local v16, outFile:Ljava/lang/String;
    new-instance v19, Ljava/io/FileWriter;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 405
    .local v19, writer:Ljava/io/Writer;
    invoke-virtual/range {v23 .. v23}, Lnu/xom/Document;->toXML()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {v19 .. v19}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 413
    .end local v3           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #child:Lorg/w3c/dom/Node;
    .end local v6           #docFragment:Lorg/w3c/dom/DocumentFragment;
    .end local v7           #document:Lorg/w3c/dom/Document;
    .end local v10           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12           #i:I
    .end local v14           #nodes:Lorg/w3c/dom/NodeList;
    .end local v15           #nodes2:Lnu/xom/Nodes;
    .end local v16           #outFile:Ljava/lang/String;
    .end local v19           #writer:Ljava/io/Writer;
    .end local v23           #xomDoc:Lnu/xom/Document;
    :cond_1
    :goto_2
    if-nez v11, :cond_2

    .line 414
    :try_start_2
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getFilesDir()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "/spn-conf.xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 416
    .restart local v16       #outFile:Ljava/lang/String;
    new-instance v19, Ljava/io/FileWriter;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 417
    .restart local v19       #writer:Ljava/io/Writer;
    const-string v20, "<?xml version=\"1.0\"?><spnOverrides><spnOverride numeric=\""

    .line 418
    .local v20, xml:Ljava/lang/String;
    const-string v21, "\" spn=\""

    .line 419
    .local v21, xml2:Ljava/lang/String;
    const-string v22, "\" /></spnOverrides>"

    .line 421
    .local v22, xml3:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .local v18, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    move-object/from16 v0, p0

    iget v0, v0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->simOperatorNumber:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {v19 .. v19}, Ljava/io/Writer;->flush()V

    .line 430
    invoke-virtual/range {v19 .. v19}, Ljava/io/Writer;->close()V

    .line 433
    .end local v16           #outFile:Ljava/lang/String;
    .end local v18           #sb:Ljava/lang/StringBuilder;
    .end local v19           #writer:Ljava/io/Writer;
    .end local v20           #xml:Ljava/lang/String;
    .end local v21           #xml2:Ljava/lang/String;
    .end local v22           #xml3:Ljava/lang/String;
    :cond_2
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object v5, v0

    const/16 v24, 0x0

    .line 434
    const-string v25, "chmod 777 /system/etc/spn-conf.xml"

    aput-object v25, v5, v24

    const/16 v24, 0x1

    .line 435
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "cat "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getFilesDir()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/spn-conf.xml>/system/etc/spn-conf.xml"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v5, v24

    const/16 v24, 0x2

    .line 436
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "rm "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getFilesDir()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/spn-conf.xml"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v5, v24

    const/16 v24, 0x3

    .line 437
    const-string v25, "chmod 444 /system/etc/spn-conf.xml"

    aput-object v25, v5, v24

    .line 440
    .local v5, cmds:[Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 441
    const/16 v24, 0x3e8

    move-object v0, v5

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/stericson/RootTools/RootTools;->sendShell([Ljava/lang/String;I)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 448
    .end local v5           #cmds:[Ljava/lang/String;
    .end local v11           #found:Z
    .end local v17           #result:Lcom/stericson/RootTools/RootTools$Result;
    :cond_3
    :goto_3
    const-string v24, "/system"

    const-string v25, "RO"

    invoke-static/range {v24 .. v25}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 454
    :goto_4
    if-eqz v9, :cond_7

    .line 455
    const v24, 0x7f06001a

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->Toasty(I)V

    .line 466
    .end local p1
    :goto_5
    return-void

    .line 384
    .restart local v3       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4       #child:Lorg/w3c/dom/Node;
    .restart local v7       #document:Lorg/w3c/dom/Document;
    .restart local v10       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v11       #found:Z
    .restart local v12       #i:I
    .restart local v14       #nodes:Lorg/w3c/dom/NodeList;
    .restart local v17       #result:Lcom/stericson/RootTools/RootTools$Result;
    .restart local p1
    :cond_4
    :try_start_3
    invoke-interface {v14, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 385
    .local v13, node:Lorg/w3c/dom/Node;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v24

    const-string v25, "spnOverride"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 386
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 387
    .local v2, attr:Lorg/w3c/dom/NamedNodeMap;
    const-string v24, "numeric"

    move-object v0, v2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->simOperatorNumber:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 388
    const-string v24, "spn"

    move-object v0, v2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 389
    const/4 v11, 0x1

    .line 390
    goto/16 :goto_1

    .line 383
    .end local v2           #attr:Lorg/w3c/dom/NamedNodeMap;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 408
    .end local v3           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #child:Lorg/w3c/dom/Node;
    .end local v7           #document:Lorg/w3c/dom/Document;
    .end local v10           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12           #i:I
    .end local v13           #node:Lorg/w3c/dom/Node;
    .end local v14           #nodes:Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v24

    move-object/from16 v8, v24

    .line 409
    .local v8, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 444
    .end local v8           #e:Ljava/lang/Exception;
    .end local v11           #found:Z
    .end local v17           #result:Lcom/stericson/RootTools/RootTools$Result;
    :catch_1
    move-exception v24

    move-object/from16 v8, v24

    .line 445
    .restart local v8       #e:Ljava/lang/Exception;
    const/4 v9, 0x1

    goto :goto_3

    .line 451
    .end local v8           #e:Ljava/lang/Exception;
    :cond_6
    const v24, 0x7f06001b

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->Toasty(I)V

    goto :goto_4

    .line 457
    :cond_7
    const v24, 0x7f090008

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getCurrentCarrier()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 458
    const v24, 0x7f09000a

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 459
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/cstudio/changecarrier/ChangeCarrierActivity;->isBackupChecked:Z

    .line 460
    invoke-direct/range {p0 .. p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->RebootDialog()V

    goto/16 :goto_5

    .line 464
    .restart local p1
    :cond_8
    const v24, 0x7f060014

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->Toasty(I)V

    goto/16 :goto_5
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    new-instance v1, Ljava/io/FileInputStream;

    .line 280
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 281
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 283
    .local v0, inChannel:Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/io/FileOutputStream;

    .line 282
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 283
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 285
    .local v5, outChannel:Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 293
    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 295
    :cond_1
    return-void

    .line 288
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 289
    .local v6, e:Ljava/io/IOException;
    :try_start_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 292
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 293
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 294
    :cond_3
    throw v1
.end method

.method private getCurrentCarrier()Ljava/lang/String;
    .locals 14

    .prologue
    .line 306
    const v12, 0x7f06001d

    invoke-virtual {p0, v12}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, carrier:Ljava/lang/String;
    :try_start_0
    new-instance v11, Ljava/io/File;

    const-string v12, "/system/etc/spn-conf.xml"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    .local v11, xml:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 312
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 313
    .local v7, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 314
    .local v1, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 315
    .local v5, document:Lorg/w3c/dom/Document;
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    .line 316
    .local v4, child:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 318
    .local v10, nodes:Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lt v8, v12, :cond_1

    .end local v1           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #child:Lorg/w3c/dom/Node;
    .end local v5           #document:Lorg/w3c/dom/Document;
    .end local v7           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8           #i:I
    .end local v10           #nodes:Lorg/w3c/dom/NodeList;
    :cond_0
    move-object v3, v2

    .line 333
    .end local v2           #carrier:Ljava/lang/String;
    .end local v11           #xml:Ljava/io/File;
    .local v3, carrier:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 319
    .end local v3           #carrier:Ljava/lang/String;
    .restart local v1       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2       #carrier:Ljava/lang/String;
    .restart local v4       #child:Lorg/w3c/dom/Node;
    .restart local v5       #document:Lorg/w3c/dom/Document;
    .restart local v7       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8       #i:I
    .restart local v10       #nodes:Lorg/w3c/dom/NodeList;
    .restart local v11       #xml:Ljava/io/File;
    :cond_1
    invoke-interface {v10, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 320
    .local v9, node:Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "spnOverride"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 321
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 322
    .local v0, attr:Lorg/w3c/dom/NamedNodeMap;
    const-string v12, "numeric"

    invoke-interface {v0, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iget v13, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->simOperatorNumber:I

    if-ne v12, v13, :cond_2

    .line 323
    const-string v12, "spn"

    invoke-interface {v0, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 318
    .end local v0           #attr:Lorg/w3c/dom/NamedNodeMap;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 327
    .end local v1           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #child:Lorg/w3c/dom/Node;
    .end local v5           #document:Lorg/w3c/dom/Document;
    .end local v7           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8           #i:I
    .end local v9           #node:Lorg/w3c/dom/Node;
    .end local v10           #nodes:Lorg/w3c/dom/NodeList;
    .end local v11           #xml:Ljava/io/File;
    :catch_0
    move-exception v12

    move-object v6, v12

    .local v6, e:Ljava/lang/Exception;
    move-object v3, v2

    .line 330
    .end local v2           #carrier:Ljava/lang/String;
    .restart local v3       #carrier:Ljava/lang/String;
    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 134
    iget-object v0, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method private log(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, msg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 142
    return-void

    .line 139
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    .local v1, item:Ljava/lang/String;
    iget-object v2, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f060018

    const/4 v6, 0x7

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0, v6}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->requestWindowFeature(I)Z

    move-result v3

    .line 66
    .local v3, titleBarSupport:Z
    const v4, 0x7f030001

    invoke-virtual {p0, v4}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->setContentView(I)V

    .line 68
    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f030002

    invoke-virtual {v4, v6, v5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 72
    :cond_0
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 74
    .local v2, teleManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_3

    move v4, v8

    :goto_0
    iput-boolean v4, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->isFlightmode:Z

    .line 76
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-eq v4, v8, :cond_1

    .line 77
    invoke-direct {p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->DisableUI()V

    .line 78
    invoke-direct {p0, v9}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->Toasty(I)V

    .line 81
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    iget-boolean v4, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->isFlightmode:Z

    if-eqz v4, :cond_4

    .line 82
    :cond_2
    invoke-direct {p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->DisableUI()V

    .line 83
    const v4, 0x7f06001c

    invoke-direct {p0, v4}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->Toasty(I)V

    .line 95
    :goto_1
    const v4, 0x7f090007

    invoke-virtual {p0, v4}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v5, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->simOperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v4, 0x7f090008

    invoke-virtual {p0, v4}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-direct {p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getCurrentCarrier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v4, 0x7f09000a

    invoke-virtual {p0, v4}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 99
    .local v0, backup:Landroid/widget/CheckBox;
    new-instance v4, Lde/cstudio/changecarrier/ChangeCarrierActivity$1;

    invoke-direct {v4, p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity$1;-><init>(Lde/cstudio/changecarrier/ChangeCarrierActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/spn-conf.bak"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 112
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    iput-boolean v7, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->isBackupChecked:Z

    .line 119
    :goto_2
    const v4, 0x7f09000b

    invoke-virtual {p0, v4}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v5, Lde/cstudio/changecarrier/ChangeCarrierActivity$2;

    invoke-direct {v5, p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity$2;-><init>(Lde/cstudio/changecarrier/ChangeCarrierActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void

    .end local v0           #backup:Landroid/widget/CheckBox;
    :cond_3
    move v4, v7

    .line 74
    goto/16 :goto_0

    .line 86
    :cond_4
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->simOperatorNumber:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->simOperatorNumber:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->simOperator:Ljava/lang/String;

    goto/16 :goto_1

    .line 87
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 88
    .local v1, e:Ljava/lang/NumberFormatException;
    iput v7, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->simOperatorNumber:I

    .line 89
    invoke-direct {p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->DisableUI()V

    .line 90
    invoke-direct {p0, v9}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->Toasty(I)V

    goto :goto_3

    .line 115
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #backup:Landroid/widget/CheckBox;
    :cond_5
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 116
    iput-boolean v8, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->isBackupChecked:Z

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 146
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/spn-conf.bak"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, file:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/spn-conf.bak"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, file2:Ljava/io/File;
    invoke-virtual {p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 151
    .local v2, inflator:Landroid/view/MenuInflater;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    :cond_0
    const v3, 0x7f080001

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 157
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    .line 154
    :cond_1
    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v10, 0x1

    .line 162
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/spn-conf.bak"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v7, intern_backup:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity;->sdcard:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "spn-conf.bak"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v6, extern_backup:Ljava/io/File;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 275
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    :goto_0
    return v8

    .line 167
    :pswitch_0
    const/4 v0, 0x0

    .line 169
    .local v0, choice:Z
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 170
    const/4 v0, 0x1

    .line 172
    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    .line 173
    const v9, 0x7f06000a

    invoke-virtual {p0, v9}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 174
    const v8, 0x7f06000b

    invoke-virtual {p0, v8}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v10

    .line 177
    .local v2, choices:[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    .local v1, choiceplace:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f060009

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 179
    new-instance v8, Lde/cstudio/changecarrier/ChangeCarrierActivity$3;

    invoke-direct {v8, p0, v6, v7}, Lde/cstudio/changecarrier/ChangeCarrierActivity$3;-><init>(Lde/cstudio/changecarrier/ChangeCarrierActivity;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v1, v2, v8}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 207
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 208
    .local v4, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 231
    .end local v1           #choiceplace:Landroid/app/AlertDialog$Builder;
    .end local v2           #choices:[Ljava/lang/CharSequence;
    .end local v4           #dlg:Landroid/app/AlertDialog;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 232
    const v8, 0x7f060005

    invoke-direct {p0, v8}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->Toasty(I)V

    .line 233
    const v8, 0x7f090008

    invoke-virtual {p0, v8}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-direct {p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->getCurrentCarrier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-direct {p0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->RebootDialog()V

    :cond_1
    move v8, v10

    .line 236
    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 211
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 212
    const-string v8, "/system"

    const-string v9, "RW"

    invoke-static {v8, v9}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    :try_start_0
    const-string v8, "chmod 777 /system/etc/spn-conf.xml"

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;)Ljava/util/List;

    .line 215
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cat "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">/system/etc/spn-conf.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;)Ljava/util/List;

    .line 216
    const-string v8, "chmod 444 /system/etc/spn-conf.xml"

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;)Ljava/util/List;

    .line 217
    const-string v8, "/system"

    const-string v9, "RO"

    invoke-static {v8, v9}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 218
    :catch_0
    move-exception v8

    goto :goto_1

    .line 220
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 221
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 222
    const-string v8, "/system"

    const-string v9, "RW"

    invoke-static {v8, v9}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 224
    :try_start_1
    const-string v8, "chmod 777 /system/etc/spn-conf.xml"

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;)Ljava/util/List;

    .line 225
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cat "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">/system/etc/spn-conf.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;)Ljava/util/List;

    .line 226
    const-string v8, "chmod 444 /system/etc/spn-conf.xml"

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;)Ljava/util/List;

    .line 227
    const-string v8, "/system"

    const-string v9, "RO"

    invoke-static {v8, v9}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 228
    :catch_1
    move-exception v8

    goto/16 :goto_1

    .line 239
    .end local v0           #choice:Z
    :pswitch_1
    const/4 v3, 0x0

    .line 241
    .local v3, copy:Z
    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 243
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    .local v4, dlg:Landroid/app/AlertDialog$Builder;
    const/high16 v8, 0x7f06

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 245
    const v8, 0x7f060008

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 246
    const v8, 0x7f06000f

    new-instance v9, Lde/cstudio/changecarrier/ChangeCarrierActivity$4;

    invoke-direct {v9, p0, v7, v6}, Lde/cstudio/changecarrier/ChangeCarrierActivity$4;-><init>(Lde/cstudio/changecarrier/ChangeCarrierActivity;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v4, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 256
    const v8, 0x7f060010

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 257
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 258
    const/4 v3, 0x0

    .line 263
    .end local v4           #dlg:Landroid/app/AlertDialog$Builder;
    :goto_2
    if-eqz v3, :cond_4

    .line 264
    invoke-static {v7, v6}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 265
    const v8, 0x7f060007

    invoke-direct {p0, v8}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->Toasty(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_3
    move v8, v10

    .line 268
    goto/16 :goto_0

    .line 260
    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    .line 270
    .end local v3           #copy:Z
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lde/cstudio/changecarrier/DonateActivity;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .local v5, donate:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->startActivity(Landroid/content/Intent;)V

    move v8, v10

    .line 272
    goto/16 :goto_0

    .line 267
    .end local v5           #donate:Landroid/content/Intent;
    .restart local v3       #copy:Z
    :catch_2
    move-exception v8

    goto :goto_3

    .line 165
    :pswitch_data_0
    .packed-switch 0x7f090010
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

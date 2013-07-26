.class public Lde/cstudio/changecarrier/WidgetProvider41;
.super Landroid/appwidget/AppWidgetProvider;
.source "WidgetProvider41.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 25
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 29
    const-string v22, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/TelephonyManager;

    .line 31
    .local v20, teleManager:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "airplane_mode_on"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/16 v22, 0x1

    move/from16 v14, v22

    .line 33
    .local v14, isFlightmode:Z
    :goto_0
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v22

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    if-eqz v14, :cond_2

    .line 34
    :cond_0
    invoke-super/range {p0 .. p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 78
    :goto_1
    return-void

    .line 31
    .end local v14           #isFlightmode:Z
    :cond_1
    const/16 v22, 0x0

    move/from16 v14, v22

    goto :goto_0

    .line 38
    .restart local v14       #isFlightmode:Z
    :cond_2
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 39
    .local v19, simOperatorNumber:I
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v18

    .line 41
    .local v18, simOperator:Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    const-string v22, "/system/etc/spn-conf.xml"

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v21, xml:Ljava/io/File;
    move-object/from16 v8, v18

    .line 44
    .local v8, carrier:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_3

    if-lez v19, :cond_3

    .line 46
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    .line 47
    .local v12, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 48
    .local v7, builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v10

    .line 49
    .local v10, document:Lorg/w3c/dom/Document;
    invoke-interface {v10}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    .line 50
    .local v9, child:Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 52
    .local v16, nodes:Lorg/w3c/dom/NodeList;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 53
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    move v0, v13

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    .line 68
    .end local v7           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v9           #child:Lorg/w3c/dom/Node;
    .end local v10           #document:Lorg/w3c/dom/Document;
    .end local v12           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13           #i:I
    .end local v16           #nodes:Lorg/w3c/dom/NodeList;
    :cond_3
    new-instance v17, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const v23, 0x7f030004

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 69
    .local v17, rvs:Landroid/widget/RemoteViews;
    const v22, 0x7f09000f

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 71
    new-instance v5, Landroid/content/Intent;

    const-class v22, Lde/cstudio/changecarrier/ChangeCarrierActivity;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v5, active:Landroid/content/Intent;
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object v2, v5

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 73
    .local v4, actionPendingIntent:Landroid/app/PendingIntent;
    const v22, 0x7f09000f

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 75
    new-instance v22, Landroid/content/ComponentName;

    const-class v23, Lde/cstudio/changecarrier/WidgetProvider41;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 77
    invoke-super/range {p0 .. p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto/16 :goto_1

    .line 54
    .end local v4           #actionPendingIntent:Landroid/app/PendingIntent;
    .end local v5           #active:Landroid/content/Intent;
    .end local v17           #rvs:Landroid/widget/RemoteViews;
    .restart local v7       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9       #child:Lorg/w3c/dom/Node;
    .restart local v10       #document:Lorg/w3c/dom/Document;
    .restart local v12       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v13       #i:I
    .restart local v16       #nodes:Lorg/w3c/dom/NodeList;
    :cond_4
    :try_start_1
    move-object/from16 v0, v16

    move v1, v13

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 55
    .local v15, node:Lorg/w3c/dom/Node;
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "spnOverride"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 56
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 57
    .local v6, attr:Lorg/w3c/dom/NamedNodeMap;
    const-string v22, "numeric"

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 58
    const-string v22, "spn"

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 53
    .end local v6           #attr:Lorg/w3c/dom/NamedNodeMap;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 62
    .end local v7           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v9           #child:Lorg/w3c/dom/Node;
    .end local v10           #document:Lorg/w3c/dom/Document;
    .end local v12           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13           #i:I
    .end local v15           #node:Lorg/w3c/dom/Node;
    .end local v16           #nodes:Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v22

    move-object/from16 v11, v22

    .line 63
    .local v11, e:Ljava/lang/Exception;
    invoke-super/range {p0 .. p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto/16 :goto_1
.end method

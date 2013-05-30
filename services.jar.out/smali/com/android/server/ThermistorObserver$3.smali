.class Lcom/android/server/ThermistorObserver$3;
.super Landroid/content/BroadcastReceiver;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermistorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThermistorObserver;


# direct methods
.method constructor <init>(Lcom/android/server/ThermistorObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 560
    const-string v2, "frequency"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v17

    .line 561
    .local v17, frequency_eachLevels:[I
    const-string v2, "cpu_max_core"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v14

    .line 562
    .local v14, cpuMaxCore_eachLevels:[I
    const-string v2, "charging_current"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v13

    .line 563
    .local v13, charging_current_eachLevels:[I
    const-string v2, "brightness"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v12

    .line 564
    .local v12, brightness_eachLevels:[Z
    const-string v2, "lcd_fps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v21

    .line 565
    .local v21, lcdFPS_eachLevels:[Z
    const-string v2, "flash_led"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v16

    .line 567
    .local v16, flashLed_eachLevels:[Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v2, v2, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    array-length v2, v2

    add-int/lit8 v22, v2, -0x1

    .line 569
    .local v22, numberOfSIOPLevels:I
    move-object/from16 v0, v17

    array-length v2, v0

    move/from16 v0, v22

    if-ne v2, v0, :cond_0

    array-length v2, v14

    move/from16 v0, v22

    if-ne v2, v0, :cond_0

    array-length v2, v13

    move/from16 v0, v22

    if-ne v2, v0, :cond_0

    array-length v2, v12

    move/from16 v0, v22

    if-ne v2, v0, :cond_0

    move-object/from16 v0, v21

    array-length v2, v0

    move/from16 v0, v22

    if-ne v2, v0, :cond_0

    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v22

    if-eq v2, v0, :cond_1

    .line 575
    :cond_0
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mSIOPLevelSetByTestApp : size of setting values is different SIOP Levels"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_0
    return-void

    .line 580
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    invoke-static {v2}, Lcom/android/server/ThermistorObserver;->access$1200(Lcom/android/server/ThermistorObserver;)Lcom/android/server/ThermistorObserver$SIOPLevel;

    move-result-object v2

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$300(Lcom/android/server/ThermistorObserver$SIOPLevel;)Ljava/lang/String;

    move-result-object v20

    .line 581
    .local v20, lastSIOPLevelName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v3, v3, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    invoke-static {v4}, Lcom/android/server/ThermistorObserver;->access$1200(Lcom/android/server/ThermistorObserver;)Lcom/android/server/ThermistorObserver$SIOPLevel;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/ThermistorObserver;->changeState(Lcom/android/server/ThermistorObserver$SIOPLevel;Lcom/android/server/ThermistorObserver$SIOPLevel;)V

    .line 584
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 585
    add-int/lit8 v19, v18, 0x1

    .line 586
    .local v19, indexToSet:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v0, v2, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    move-object/from16 v23, v0

    new-instance v2, Lcom/android/server/ThermistorObserver$SIOPLevel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Level"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    aget v6, v17, v18

    mul-int/lit16 v6, v6, 0x3e8

    aget v7, v14, v18

    aget v8, v13, v18

    aget-boolean v9, v12, v18

    if-eqz v9, :cond_2

    const/16 v9, 0xe6

    :goto_2
    aget-boolean v10, v21, v18

    if-eqz v10, :cond_3

    const/16 v10, 0x28

    :goto_3
    aget-boolean v11, v16, v18

    invoke-direct/range {v2 .. v11}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIIIIZ)V

    aput-object v2, v23, v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 586
    :cond_2
    const/4 v9, -0x1

    goto :goto_2

    :cond_3
    const/16 v10, 0x3c

    goto :goto_3

    .line 595
    :catch_0
    move-exception v15

    .line 596
    .local v15, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 600
    .end local v15           #e:Ljava/lang/Exception;
    .end local v19           #indexToSet:I
    :cond_4
    const/16 v18, 0x0

    .line 601
    const/16 v18, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v2, v2, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    array-length v2, v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v2, v2, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v2, v2, v18

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$300(Lcom/android/server/ThermistorObserver$SIOPLevel;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 607
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v2, v2, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    array-length v2, v2

    move/from16 v0, v18

    if-ne v0, v2, :cond_7

    .line 608
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "not found last SIOPLevel"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 601
    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 611
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v3, v3, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v3, v3, v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v4, v4, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/ThermistorObserver;->changeState(Lcom/android/server/ThermistorObserver$SIOPLevel;Lcom/android/server/ThermistorObserver$SIOPLevel;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v3, v3, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v3, v3, v18

    #setter for: Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    invoke-static {v2, v3}, Lcom/android/server/ThermistorObserver;->access$1202(Lcom/android/server/ThermistorObserver;Lcom/android/server/ThermistorObserver$SIOPLevel;)Lcom/android/server/ThermistorObserver$SIOPLevel;

    goto/16 :goto_0
.end method

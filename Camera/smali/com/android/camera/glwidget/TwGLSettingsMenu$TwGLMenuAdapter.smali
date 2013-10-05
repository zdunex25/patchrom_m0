.class Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLSettingsMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/glwidget/TwGLSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/glwidget/TwGLSettingsMenu;


# direct methods
.method public constructor <init>(Lcom/android/camera/glwidget/TwGLSettingsMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLSettingsMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-direct {p0}, Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->initItems()V

    .line 136
    return-void
.end method

.method private initItems()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    .line 139
    const-string v1, "TwGLSettingsMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initItems E : res item count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/android/camera/resourcedata/MenuResourceBase;
    invoke-static {v3}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->access$000(Lcom/android/camera/glwidget/TwGLSettingsMenu;)Lcom/android/camera/resourcedata/MenuResourceBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/android/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->access$000(Lcom/android/camera/glwidget/TwGLSettingsMenu;)Lcom/android/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-ge v7, v1, :cond_a

    .line 141
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/android/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->access$000(Lcom/android/camera/glwidget/TwGLSettingsMenu;)Lcom/android/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/android/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    .line 142
    .local v4, itemData:Lcom/android/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v4, v9}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v2}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->access$100(Lcom/android/camera/glwidget/TwGLSettingsMenu;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/android/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v3}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->access$200(Lcom/android/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/android/camera/MenuBase;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;
    invoke-static {v6}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->access$300(Lcom/android/camera/glwidget/TwGLSettingsMenu;)Lcom/android/camera/MenuResourceDepot;

    move-result-object v6

    invoke-static {v1, v2, v3, v6}, Lcom/android/camera/command/CommandBuilder;->buildCommand(ILcom/android/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;)Lcom/android/camera/command/MenuCommand;

    move-result-object v5

    .line 143
    .local v5, command:Lcom/android/camera/command/MenuCommand;
    new-instance v0, Lcom/android/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->access$400(Lcom/android/camera/glwidget/TwGLSettingsMenu;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->access$500()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->access$600()I

    move-result v3

    int-to-float v3, v3

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/glwidget/TwGLItem;-><init>(Lcom/android/camera/AbstractCameraActivity;FFLcom/android/camera/resourcedata/MenuResourceBundle;Lcom/android/camera/command/MenuCommand;I)V

    .line 144
    .local v0, item:Lcom/android/camera/glwidget/TwGLItem;
    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v2, 0xbce

    if-ne v1, v2, :cond_1

    .line 145
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLItem;->setToggleButton()V

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->access$700(Lcom/android/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 148
    invoke-virtual {v0, v9}, Lcom/android/camera/glwidget/TwGLItem;->setZOrder(I)V

    .line 150
    invoke-virtual {v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    invoke-virtual {v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0xbc1

    if-ne v1, v2, :cond_3

    .line 151
    :cond_2
    invoke-virtual {v0, v8}, Lcom/android/camera/glwidget/TwGLItem;->setZOrder(I)V

    .line 152
    :cond_3
    invoke-virtual {v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_4

    invoke-virtual {v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0xbe0

    if-ne v1, v2, :cond_5

    .line 153
    :cond_4
    invoke-virtual {v0, v8}, Lcom/android/camera/glwidget/TwGLItem;->setZOrder(I)V

    .line 154
    :cond_5
    invoke-virtual {v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0x4b

    if-eq v1, v2, :cond_6

    invoke-virtual {v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0xbe1

    if-ne v1, v2, :cond_7

    .line 155
    :cond_6
    invoke-virtual {v0, v8}, Lcom/android/camera/glwidget/TwGLItem;->setZOrder(I)V

    .line 156
    :cond_7
    invoke-virtual {v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_8

    invoke-virtual {v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0xbc0

    if-ne v1, v2, :cond_9

    .line 157
    :cond_8
    invoke-virtual {v0, v8}, Lcom/android/camera/glwidget/TwGLItem;->setZOrder(I)V

    .line 159
    :cond_9
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->access$800(Lcom/android/camera/glwidget/TwGLSettingsMenu;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->access$800(Lcom/android/camera/glwidget/TwGLSettingsMenu;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit v2

    .line 140
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 163
    .end local v0           #item:Lcom/android/camera/glwidget/TwGLItem;
    .end local v4           #itemData:Lcom/android/camera/resourcedata/MenuResourceBundle;
    .end local v5           #command:Lcom/android/camera/command/MenuCommand;
    :cond_a
    const-string v1, "TwGLSettingsMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initItems X : mItemList size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->access$800(Lcom/android/camera/glwidget/TwGLSettingsMenu;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/android/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->access$000(Lcom/android/camera/glwidget/TwGLSettingsMenu;)Lcom/android/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 4
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 171
    if-nez p2, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/android/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->access$000(Lcom/android/camera/glwidget/TwGLSettingsMenu;)Lcom/android/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/android/camera/resourcedata/MenuResourceBundle;

    move-result-object v0

    .line 173
    .local v0, itemData:Lcom/android/camera/resourcedata/MenuResourceBundle;
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->access$800(Lcom/android/camera/glwidget/TwGLSettingsMenu;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->access$800(Lcom/android/camera/glwidget/TwGLSettingsMenu;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    monitor-exit v2

    .line 177
    .end local v0           #itemData:Lcom/android/camera/resourcedata/MenuResourceBundle;
    :goto_0
    return-object v1

    .line 175
    .restart local v0       #itemData:Lcom/android/camera/resourcedata/MenuResourceBundle;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .end local v0           #itemData:Lcom/android/camera/resourcedata/MenuResourceBundle;
    :cond_0
    move-object v1, p2

    .line 177
    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

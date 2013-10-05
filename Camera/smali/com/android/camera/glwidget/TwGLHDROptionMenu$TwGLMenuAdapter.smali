.class Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLHDROptionMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/glwidget/TwGLHDROptionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/glwidget/TwGLHDROptionMenu;


# direct methods
.method public constructor <init>(Lcom/android/camera/glwidget/TwGLHDROptionMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-direct {p0}, Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;->initItems()V

    .line 158
    return-void
.end method

.method private initItems()V
    .locals 8

    .prologue
    .line 161
    const-string v1, "TwGLHDROptionMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initItems E : res item count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLHDROptionMenu;->mResource:Lcom/android/camera/resourcedata/MenuResourceBase;
    invoke-static {v3}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->access$000(Lcom/android/camera/glwidget/TwGLHDROptionMenu;)Lcom/android/camera/resourcedata/MenuResourceBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLHDROptionMenu;->mResource:Lcom/android/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->access$000(Lcom/android/camera/glwidget/TwGLHDROptionMenu;)Lcom/android/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-ge v7, v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLHDROptionMenu;->mResource:Lcom/android/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->access$000(Lcom/android/camera/glwidget/TwGLHDROptionMenu;)Lcom/android/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/android/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    .line 164
    .local v4, itemData:Lcom/android/camera/resourcedata/MenuResourceBundle;
    const/4 v1, 0x4

    invoke-virtual {v4, v1}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    #getter for: Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v2}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->access$100(Lcom/android/camera/glwidget/TwGLHDROptionMenu;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    #getter for: Lcom/android/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v3}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->access$200(Lcom/android/camera/glwidget/TwGLHDROptionMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    #getter for: Lcom/android/camera/MenuBase;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;
    invoke-static {v6}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->access$300(Lcom/android/camera/glwidget/TwGLHDROptionMenu;)Lcom/android/camera/MenuResourceDepot;

    move-result-object v6

    invoke-static {v1, v2, v3, v6}, Lcom/android/camera/command/CommandBuilder;->buildCommand(ILcom/android/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;)Lcom/android/camera/command/MenuCommand;

    move-result-object v5

    .line 165
    .local v5, command:Lcom/android/camera/command/MenuCommand;
    new-instance v0, Lcom/android/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    #getter for: Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->access$400(Lcom/android/camera/glwidget/TwGLHDROptionMenu;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->access$500()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->access$600()I

    move-result v3

    int-to-float v3, v3

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/glwidget/TwGLItem;-><init>(Lcom/android/camera/AbstractCameraActivity;FFLcom/android/camera/resourcedata/MenuResourceBundle;Lcom/android/camera/command/MenuCommand;I)V

    .line 167
    .local v0, item:Lcom/android/camera/glwidget/TwGLItem;
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLHDROptionMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->access$700(Lcom/android/camera/glwidget/TwGLHDROptionMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 168
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItem;->setZOrder(I)V

    .line 170
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLHDROptionMenu;->mItemList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->access$800(Lcom/android/camera/glwidget/TwGLHDROptionMenu;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLHDROptionMenu;->mItemList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->access$800(Lcom/android/camera/glwidget/TwGLHDROptionMenu;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    monitor-exit v2

    .line 162
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 174
    .end local v0           #item:Lcom/android/camera/glwidget/TwGLItem;
    .end local v4           #itemData:Lcom/android/camera/resourcedata/MenuResourceBundle;
    .end local v5           #command:Lcom/android/camera/command/MenuCommand;
    :cond_0
    const-string v1, "TwGLHDROptionMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initItems X : mItemList size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLHDROptionMenu;->mItemList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->access$800(Lcom/android/camera/glwidget/TwGLHDROptionMenu;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLHDROptionMenu;->mResource:Lcom/android/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->access$000(Lcom/android/camera/glwidget/TwGLHDROptionMenu;)Lcom/android/camera/resourcedata/MenuResourceBase;

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
    .line 182
    if-nez p2, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLHDROptionMenu;->mResource:Lcom/android/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->access$000(Lcom/android/camera/glwidget/TwGLHDROptionMenu;)Lcom/android/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/android/camera/resourcedata/MenuResourceBundle;

    move-result-object v0

    .line 184
    .local v0, itemData:Lcom/android/camera/resourcedata/MenuResourceBundle;
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLHDROptionMenu;->mItemList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->access$800(Lcom/android/camera/glwidget/TwGLHDROptionMenu;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLHDROptionMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLHDROptionMenu;->mItemList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->access$800(Lcom/android/camera/glwidget/TwGLHDROptionMenu;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    monitor-exit v2

    .line 188
    .end local v0           #itemData:Lcom/android/camera/resourcedata/MenuResourceBundle;
    :goto_0
    return-object v1

    .line 186
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

    .line 188
    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method
